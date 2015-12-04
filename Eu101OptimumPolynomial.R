seq = function (n){
  return(1 - n + n*n - n^3 + n^4 - n^5 + n^6 - n^7 + n^8 - n^9 + n^(10))
}
seq0 = c()
for(i in 1:10){
  seq0 = append(seq0, seq(i))
}

createMat = function(x){
  parMat = matrix(,nrow=x,ncol=x)
  for(i in 1:x){
    for(j in 1:x){
      parMat[i,j] = i^(x - j)
    }
  }
  return(parMat)
}

polys = list()
for(i in 1:length(seq0)){
  polys = lappend(polys, solve(createMat(i)) %*% t(t(seq0[1:i])))
}

degreeSub = function(k){
  facto = matrix(,nrow=k,ncol=1)
  for(i in 1:k){
    facto[i,1] = (k+1)^(k-i)
  }
  return(facto)
}

#FIT generator for each polynomial of degree i
FITlist = c()
for(i in 1:length(polys)){
  FITlist[i] = t(polys[[i]]) %*% degreeSub(i)
}
sum(FITlist)
