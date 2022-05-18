install.packages('phangorn')

library(phangorn)
fdir <- system.file("extdata/trees", package = "phangorn")
primates <- read.phyDat(file.path(fdir, "primates.dna"),
                        format = "interleaved")

distanceMatrixprimates  <- dist.ml(primates)

#UPGMA

treeUPGMA_primates  <- upgma(distanceMatrixprimates)

plot(treeUPGMA_primates, main="UPGMA")

#NJ

treeUPGMA_primates  <- NJ(distanceMatrixprimates)

plot(treeUPGMA_primates,"unrooted", main="NJ")

#1. Ja es gibt in den Bäumen eine Maus, die nicht zu den Affen gehört. Sie befindet sich im UPGMA Baum an 
# einem Ast der sich vor der Urart der gezeigent affen abspaltet. Im NJ Baum ist nicht sofort zu erkennen 
# das sie am weitesten von den Affen entfernt ist, aber die ist zumindest mit keiner der Arten verzweigt.

#2. Mit welchen anderen zwei Primaten formt ‘Lemur’ ein Cluster? Bovine und Tarsier

#3. Welcher Primat formt mit dem Menschen ein Cluster? Chimp
