
#K-mere finden

patterncount <- function(sequens, Pattern){
  count <- 0
  
  for(i in length(Pattern):length(sequens)-length(Pattern)){
    ifelse(paste(sequens[(i+1):(i+1+length(Pattern)-1)], collapse = '')==paste(Pattern, collapse = ''), count <- count+1, count <- count+0)
    
  }
  return(count)
}


seq <- c("A","C","G","T","T","G","C","A","T","G","T","C","G","C","A","T","G","A","T","G","C","A","T","G","A","G","A","G","C","T")


frequentwords <- function(sequens, k){
  FrequentPatterns0 <- vector(mode="list",length=length(sequens)+1-k)
  counters <- vector(mode="list",length=length(sequens)+1-k)
  pattern <- vector(mode="list",length=length(sequens)+1-k)
  for (i in k:length(sequens)+1-k) {
    pattern <- (sequens[i:(i+k-1)])
    counters[i] <- patterncount(sequens, pattern)
  }
  counter <- unlist(counters)
  maxcount <- max(counter)
  for (i in k:length(sequens)+1-k){
    pattern[i:(i+k-1)] <- (sequens[i:(i+k-1)])
    if(counter[i]==maxcount){
      FrequentPatterns0[i] <- paste(pattern[i:(i+k-1)], collapse = '')
    }
  }
  FrequentPatterns <- unique(FrequentPatterns0, incomparables = FALSE)
  return(FrequentPatterns[-1])
} 

frequentwords(seq, 1)

frequentwords(seq, 2)

frequentwords(seq, 3)

frequentwords(seq, 4)

frequentwords(seq, 5)



seq <- c("A","C","G","T","T","G","C","A","T","G","T","C","G","C","A","T","G","A","T","G","C","A","T","G","A","G","A","G","C","T")




patterncount <- function(sequens, Pattern){
  count <- 0
  
  for(i in length(Pattern):length(sequens)-length(Pattern)){
    ifelse(paste(sequens[(i+1):(i+1+length(Pattern)-1)], collapse = '')==paste(Pattern, collapse = ''), count <- count+1, count <- count+0)
    
  }
  return(count)
}


frequentwords <- function(sequens, k){
  FrequentPatterns0 <- vector(mode="list",length=length(sequens)+1-k)
  counters <- vector(mode="list",length=length(sequens)+1-k)
  pattern <- vector(mode="list",length=length(sequens)+1-k)
  for (i in 1:(length(sequens)-k)) {
    pattern <- (sequens[i:(i+k-1)])
    counters[i] <- patterncount(sequens, pattern)
  }
  counter <- unlist(counters)
  maxcount <- max(counter)
  for (i in 1:(length(sequens)-k)) {
    pattern[i:(i+k-1)] <- (sequens[i:(i+k-1)])
    if(counter[i]==maxcount){
      FrequentPatterns0[i] <- paste(pattern[i:(i+k-1)], collapse = '')
    }
  }
  FrequentPatterns <- unique(FrequentPatterns0, incomparables = FALSE)
  return(FrequentPatterns[-1])
}

frequentwords(seq, 1)

frequentwords(seq, 2)

frequentwords(seq, 3)

frequentwords(seq, 4)

frequentwords(seq, 5)




#Beide Versionen funktionieren aber ich könnte mir vorstellen das die erste bei
#längeren k-meren und längere Sequenzen Probleme haben könnte desshalb hab ich die zweite Version gemacht