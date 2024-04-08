import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const getHealthData = (id_user) => {
    return prisma.im_health.findMany({
        where: { id_user },
        include: {
            im_health_goal: true,
        }
    });
}

const getHealthDataByDay = (date) => {
    return prisma.im_health_goal_daily.findUnique({
        where: { health_goal_daily_date: date },
    });
}


// 2024-04-01

export { getHealthData, getHealthDataByDay };