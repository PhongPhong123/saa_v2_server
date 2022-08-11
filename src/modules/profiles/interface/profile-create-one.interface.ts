import { Profile } from "@prisma/client";

export interface IProfileCreateOne {
    person_id: string;
    profile: Profile;
}