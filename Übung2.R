setwd("C:/Users/Frederik/Desktop/Uni/Bioinformatik")
alignedSequencesCalmodulin0 <- read.table(file="alignedSequencesCalmodulin.txt", header=F, sep = "\t",stringsAsFactors = F)

alignedSequencesCalmodulin <- t(alignedSequencesCalmodulin0)

L <- nchar(alignedSequencesCalmodulin[2])

M0 <- nchar(alignedSequencesCalmodulin[1] == alignedSequencesCalmodulin[2])

M <- L-M0

Percentage <- M/L*100

Percentage