import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const getNutritionData = () => {
  return prisma.im_nutrition.findMany();
};

const getNutritionDataById = (id_nutrition) => {
  return prisma.im_nutrition.findUnique({
    where: { id_nutrition: id_nutrition },
    include: {
      im_meal: true,
    },
  });
};

const getAllMeal = () => {
  return prisma.im_meal.findMany();
};

const getRecipeByMeal = (id_meal) => {
  return prisma.im_meal.findUnique({
    where: { id_meal: id_meal },
    include: {
      im_recipe: {
        include: {
          im_food: true,
        },
      },
    },
  });
};

export { getNutritionData, getNutritionDataById, getAllMeal, getRecipeByMeal };
