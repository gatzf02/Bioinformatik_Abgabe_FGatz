
Toss_a_Coin <- function(N ,p) {
  coin<- c("Kopf", "Zahl")
  count <-0
  
  for(i in 1:N){
   if(sample(coin, size = 1, replace = TRUE, prob = c(p, 1-p))=="Kopf"){count <- count+1
     } 
  }
  LaplaceP <- (count+1)/(N+2)
  return(LaplaceP)
}

Toss_a_Coin(20, 0.5)

Toss_a_Coin(200, 0.5)

Toss_a_Coin(20000, 0.5)

Toss_a_Coin(20000, 0.1)

Toss_a_Coin(20000, 0.9)



#Durch Erhöhoung der Versuche nimmt díe genauigkein des Ergebisses zu, da einerseits der einfluss der Lapalace Succession geringer wird,
#und andererseits durch höhrer Sample size due Genauigkeit der nicht korrigerten Warscheinlichkeit ebenfalls steigt.
#Der Einfluss von p entspricht der Binomealverteilung bei unterschidlichen Warscheinlichkeiten, das heißt bei 0,5 können häufiger mal
#etwas abweichende Ergebnissen kommen, bei 0,9 oder 0,1 also den Extremen eher seltener.



