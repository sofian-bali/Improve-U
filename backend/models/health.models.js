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
    // Récupérer la date complète
    const fullDate = new Date(date);

    return prisma.im_health_goal_daily.findMany({
        where: { health_goal_daily_date: fullDate },
    });
}


export { getHealthData, getHealthDataByDay };