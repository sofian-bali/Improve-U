import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

const getAllTrainingData = () => {
    return prisma.im_training.findMany()
}

const getTrainingDataById = (id_training) => {
    return prisma.im_training.findUnique({where: {id_training}})
}

// const getArtistByStyle = (idStyle) => {
//     return prisma.artiste.findMany({where: {idStyle}})
// }

export {
    getAllTrainingData,
    getTrainingDataById
}