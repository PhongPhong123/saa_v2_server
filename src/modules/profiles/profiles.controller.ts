import { Body, Controller, HttpStatus, InternalServerErrorException, Post, Res } from "@nestjs/common";
import { ProfilesService } from "./profiles.service";
import { Response } from "express";
import { IProfileCreateOne } from "./interface/profile-create-one.interface";
import { PersonsService } from "../persons/persons.service";

@Controller('profiles')
export class ProfilesController {
    constructor (private profilesService: ProfilesService, private personsService: PersonsService) { }

    @Post()
    async createOne(@Body() body: IProfileCreateOne, @Res() response: Response) {
        try {
            const { person_id, profile } = body;
            const person = await this.personsService.findOne(person_id);
            await this.profilesService.createOne(person.id, profile);
            return response.status(HttpStatus.OK).json({
                statusCode: HttpStatus.OK,
                message: `${person.id} has been created a profile`
            });
        } catch (error) {
            throw new InternalServerErrorException();
        }
    }
}