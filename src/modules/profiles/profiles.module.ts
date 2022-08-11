import { Module } from "@nestjs/common";
import { ProfilesController } from "./profiles.controller";
import { ProfilesService } from "./profiles.service";
import { PrismaModule } from "../prisma/prisma.module";
import { PersonsModule } from "../persons/persons.module";

@Module({
    controllers: [ProfilesController],
    providers: [ProfilesService],
    imports: [PrismaModule, PersonsModule],
    exports: [ProfilesService]
})
export class ProfilesModule {

}