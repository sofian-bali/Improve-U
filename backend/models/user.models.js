import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const getAllUser = () => {
  return prisma.im_user.findMany();
};

const getUser = (id_user) => {
  return prisma.im_user.findUnique({
    where: { id_user },
    include: {
      im_training: true,
      im_nutrition: true,
      im_health: true,
    },
  });
};

export { getAllUser, getUser };
