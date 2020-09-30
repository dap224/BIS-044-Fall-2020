#Assignment 3 part 2 
#count the presidential votes 
load("prrace08.rda")

#getting the number of rows
n <-length(prrace08$state)

#initializing variables to count votes 
obama <- 0
mccain <- 0

#print(n)
for(i in 1:n){
  if(prrace08$p_obama[i] > prrace08$p_mc_cain[i]){
    obama <- (prrace08$el_votes[i] + obama)
  }else{
    mccain <- (prrace08$el_votes[i] + mccain) 
  }
} 
print(obama + 1)
print(mccain - 1)