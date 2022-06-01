setwd("C:/Users/Frederik/Desktop/Uni/Bioinformatik")
human_ACTG_Isoforms0 <- read.table("human_ACTG_Isoforms.txt", header=F, sep="\t")


sequenz <- strsplit(human_ACTG_Isoforms0$V1, split="")

sequenz2 <- append(sequenz, values="")


for(i in 1:length(sequenz2[[1]])) {
  for(i in 1:length(sequenz2)){
  konsens <- sort(sequenz2, decreasing= TRUE)[1]
  }
}