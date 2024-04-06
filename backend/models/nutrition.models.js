import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const getAllNutrition = () => {
  return prisma.im_nutrition.findMany();
};

export { getAllNutrition };