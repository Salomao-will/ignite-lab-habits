-- CreateTable
CREATE TABLE "day" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "date" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "habit_week_day" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "habit_id" TEXT NOT NULL,
    "week_day" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "day_habit" (
    "habit_id" TEXT NOT NULL,
    "day_id" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "day_date_key" ON "day"("date");

-- CreateIndex
CREATE UNIQUE INDEX "habit_week_day_habit_id_week_day_key" ON "habit_week_day"("habit_id", "week_day");

-- CreateIndex
CREATE UNIQUE INDEX "day_habit_habit_id_day_id_key" ON "day_habit"("habit_id", "day_id");
