/*
  Warnings:

  - You are about to drop the `_AppointmentToTag` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `tag_id` to the `Appointment` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_AppointmentToTag" DROP CONSTRAINT "_AppointmentToTag_A_fkey";

-- DropForeignKey
ALTER TABLE "_AppointmentToTag" DROP CONSTRAINT "_AppointmentToTag_B_fkey";

-- AlterTable
ALTER TABLE "Appointment" ADD COLUMN     "tag_id" UUID NOT NULL;

-- DropTable
DROP TABLE "_AppointmentToTag";

-- AddForeignKey
ALTER TABLE "Appointment" ADD CONSTRAINT "Appointment_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "Tag"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
