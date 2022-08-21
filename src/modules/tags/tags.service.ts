import {Injectable} from "@nestjs/common";
import {PrismaService} from "../prisma/prisma.service";

@Injectable()
export class TagsService {
    constructor(private prisma: PrismaService) {
    }

    async createOne(name: string, description?: string) {
        await this.prisma.tag.create({
            data: {
                name,
                description
            }
        })
    }
}