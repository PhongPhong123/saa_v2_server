/*
  Warnings:

  - Added the required column `held_on_time` to the `Appointment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Appointment" ADD COLUMN     "held_on_time" TIMESTAMP(3) NOT NULL;
