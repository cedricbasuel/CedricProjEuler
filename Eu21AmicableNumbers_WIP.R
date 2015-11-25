
timestart = proc.time()
sumDivisors = function(x){
  summy = 0
  if(x==1 | x==0){return(0)}
  else{
    for(i in 2:floor(x/2) ){
    if(x%%i==0){
      summy=summy + i
    }
  }
  return(summy)
    }
}

isAmicable = function(x,y){
  if(y==sumDivisors(x) & x==sumDivisors(y) & x<10000 & y<10000){
    return(T)
  }
  else(return(F))
}


amicables=list()
for(i in 2:10000){
 curt=sumDivisors(i)
 if(isAmicable(i,curt)){
   potentialpair=c(i,curt)
   amicables=c(amicables,list(potentialpair))
 }
}

proc.time() - timestart
amicables
