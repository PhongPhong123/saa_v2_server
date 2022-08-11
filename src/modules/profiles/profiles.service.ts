import { Injectable } from "@nestjs/common";
import { PrismaService } from "../prisma/prisma.service";
import { Profile } from "@prisma/client";

@Injectable()
export class ProfilesService {
    constructor (private prisma: PrismaService) { }

    async createOne(person_id: string, profile: Profile) {
        await this.prisma.person.update({
            where: {
                id: person_id
            },
            data: {
                profile: {
                    create: {
                        full_name: profile.full_name || `${profile.first_name} ${profile.last_name}`,
                        first_name: profile.first_name,
                        last_name: profile.last_name,
                        age: profile.age,
                        address: profile.address,
                        job: profile.job
                    }
                }
            }
        });
    }
}