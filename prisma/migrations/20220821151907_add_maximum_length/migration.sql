/*
  Warnings:

  - You are about to alter the column `start_time` on the `Appointment` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(8)`.
  - You are about to alter the column `end_time` on the `Appointment` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(8)`.

*/
-- AlterTable
ALTER TABLE "Appointment" ALTER COLUMN "start_time" SET DATA TYPE VARCHAR(8),
ALTER COLUMN "end_time" SET DATA TYPE VARCHAR(8);
