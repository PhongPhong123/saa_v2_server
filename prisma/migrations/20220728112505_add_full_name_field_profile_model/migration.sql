/*
  Warnings:

  - Added the required column `full_name` to the `Profile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Profile" ADD COLUMN     "full_name" VARCHAR(50) NOT NULL,
ALTER COLUMN "first_name" SET DATA TYPE VARCHAR(25),
ALTER COLUMN "last_name" SET DATA TYPE VARCHAR(25);
