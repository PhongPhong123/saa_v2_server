/*
  Warnings:

  - You are about to drop the column `tags` on the `Appointment` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Appointment" DROP COLUMN "tags";

-- CreateTable
CREATE TABLE "Tag" (
    "id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,

    CONSTRAINT "Tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_AppointmentToTag" (
    "A" UUID NOT NULL,
    "B" UUID NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Tag_name_unique_constraint" ON "Tag"("name");

-- CreateIndex
CREATE UNIQUE INDEX "_AppointmentToTag_AB_unique" ON "_AppointmentToTag"("A", "B");

-- CreateIndex
CREATE INDEX "_AppointmentToTag_B_index" ON "_AppointmentToTag"("B");

-- AddForeignKey
ALTER TABLE "_AppointmentToTag" ADD CONSTRAINT "_AppointmentToTag_A_fkey" FOREIGN KEY ("A") REFERENCES "Appointment"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AppointmentToTag" ADD CONSTRAINT "_AppointmentToTag_B_fkey" FOREIGN KEY ("B") REFERENCES "Tag"("id") ON DELETE CASCADE ON UPDATE CASCADE;
