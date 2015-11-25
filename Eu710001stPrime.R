primes=c()
primes[1]=2
primes[2]=3


isPrime=function(n){
  if(n%%2==0){
    return(F)
  }
  else{
    points=0
    for(i in 3:floor(sqrt(n))){
      curt=n%%i
      if(curt==0){
        points=points+1
      }
    }
    if(points>0){return(F)}
    else{return(T)}
  }
}

i=4
while(length(primes)<10002){
  isPrime(i)
  if(isPrime(i)){
    primes=append(primes,i)
  }
  i=i+1
}
