import {Body, Controller, Get, HttpStatus, InternalServerErrorException, Post, Res} from "@nestjs/common";
import { Response } from "express";
import { TagsService } from "./tags.service";

@Controller('tags')
export class TagsController {
    constructor(private tagsService: TagsService) {}

    @Get()
    async findAll(@Res() response: Response) {
        try {
            return response.status(HttpStatus.OK).json(await this.tagsService.findAll());
        } catch (error) {

        }
    }

    @Post()
    async createOne(@Res() response: Response, @Body() body: {name: string, description?: string}) {
        try {
            const { name, description } = body;
            await this.tagsService.createOne(name, description);
            return response.status(HttpStatus.OK).json({
                statusCode: HttpStatus.OK,
                message: "the tag created"
            });
        } catch (error) {
            throw new InternalServerErrorException()
        }
    }
}