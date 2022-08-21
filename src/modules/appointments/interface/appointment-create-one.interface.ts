import { Appointment } from '@prisma/client';

export interface IAppointmentCreateOne {
  person_id: string;
  appointment: Appointment;
  tag_id: string
}
