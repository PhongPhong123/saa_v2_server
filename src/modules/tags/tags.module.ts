import { Module } from "@nestjs/common";
import { TagsController } from "./tags.controller";
import { TagsService } from "./tags.service";
import { PrismaModule } from "../prisma/prisma.module";

@Module({
    controllers: [TagsController],
    providers: [TagsService],
    exports: [TagsService],
    imports: [PrismaModule],
})
export class TagsModule {}