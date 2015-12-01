collapseMatrix0 = function(pathMat){
  if(prod(dim(pathMat))==1){return(pathMat)}
  else{
    for(i in 1:length(pathMat[nrow(pathMat)-1,])-1){
      pathMat[nrow(pathMat)-1,i] = pathMat[nrow(pathMat)-1,i]+ max(pathMat[nrow(pathMat),i],pathMat[nrow(pathMat),i+1])
    }
    pathMat = pathMat[-c(nrow(pathMat)),-c(ncol(pathMat))]
    pathMat = collapseMatrix0(pathMat)
  }
  return(pathMat)
}
