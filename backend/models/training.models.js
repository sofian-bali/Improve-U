import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const getAllTrainingData = () => {
  return prisma.im_training.findMany();
};

const getTrainingDataById = (id_training) => {
  return prisma.im_training.findUnique({
    where: { id_training: id_training },
    include: {
      im_workout: true,
    },
  });
};

// Workout
const getAllWorkout = () => {
  return prisma.im_workout.findMany();
};

const getExerciseByWorkout = (id_workout) => {
  return prisma.im_workout.findUnique({
    where: {
      id_workout: id_workout,
    },
    include: {
      im_exercise: true,
    },
  });
};

export { getAllTrainingData, getTrainingDataById, getAllWorkout,getExerciseByWorkout };
