isCoprime = function(x,y){
  mini = min(x,y)
  maxi = max(x,y)
  if(mini == 1){return(T)}
  else if(mini == 2){
    if(maxi %% 2 == 0){
      return(F)
    }
    else{return(T)}
  }
  else if(x %% y == 0 | y %% x == 0){
    return(F)
  }
  else{
    mini = min(x,y)
    maxi = max(x,y)
    factorsMin = c()
    for(i in 2:ceiling(mini/2)){
      if(mini %% i == 0){
        factorsMin = append(factorsMin,i)
      }
    }
    if(sum(maxi %% factorsMin == 0) == 0){
      return(T)
    }
    else{return(F)}
  }
}

EulerPhiRatio = function(x){
  if(x==2){
    return(2)
  }
  else if(x==3){
    return(1.5)
  }
  ifCoprimes = c()
  if(x %% 2 != 0){
    ifCoprimes = append(ifCoprimes,1)
  }
  for(i in 3:(x-1)){
    if(isCoprime(x,i)){
      ifCoprimes = append(ifCoprimes,1)
      #print(i)
    }
  }
  return(x/(sum(ifCoprimes)+1))
}

EulerPhiRatioMat = c()
for(i in 2:1000000){
  EulerPhiRatioMat[i] = EulerPhiRatio(i)
}
EulerPhiRatioMat = cbind(as.data.frame(2:999999),as.data.frame(EulerPhiRatioMat))
