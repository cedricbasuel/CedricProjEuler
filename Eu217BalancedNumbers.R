digitArray = function(number){
  numberDigs = c()
  while(number>0){
    numi = number%%10
    number = (number - numi)/10
    numberDigs = append(numberDigs,numi,after=0)
  }
  return(numberDigs)
}

isBalanced = function(number){
  jurk = digitArray(number)
  sum1 = 0
  for(i in 1:ceiling(length(jurk)/2)){
  sum1 = sum1 + jurk[i]
  }
  if(length(jurk)%%2==0){
    if(sum1 == (sum(jurk) - sum1)){
      return(T)
    }
    else{return(F)}
  }
  else{
    sumMinus = sum(jurk) + jurk[ceiling(length(jurk)/2)] - sum1
    if(sum1 == sumMinus){
      return(T)
    }
    else{return(F)}
  }
}

st = proc.time()
summy = 0
for(i in 1:(10^47)){
  if(isBalanced(i)){
    summy = summy + i
  }
}
summy%%(3^15)
proc.time() - st
