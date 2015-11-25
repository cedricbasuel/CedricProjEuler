collatz=function(i){
  ncollatz=c()
  curt=0
  while(curt!=1){
    if(i%%2==0){
      curt=i/2
      i=curt
      #print(curt)
      ncollatz=append(ncollatz,curt)
    }
    else{
      curt= 3*i + 1
      #print(curt)
      i=curt
      ncollatz=append(ncollatz,curt)
    }
  }
  return(length(ncollatz))
}

ptm <- proc.time()
lengthcollatz=matrix(,nrow=1000000,ncol=2)
for(i in 1:1000000){
  lengthcollatz[i,1]=i
  lengthcollatz[i,2]=collatz(i)
} 
proc.time() - ptm
View(lengthcollatz)
