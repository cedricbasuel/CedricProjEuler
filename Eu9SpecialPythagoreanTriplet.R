isPythag=function(x,y,z){
  if(x^2 + y^2 == z^2){
    return(T)
  }
  else{return(F)}
}

#sums1000=list()
#for(i in 1:999){
#  for(j in 1:999){
#    for(k in 1:999){
#     if(i+j+k==1000){
#       summy=c(i,j,k)
#        sums1000=c(sums1000,list(summy))
#      }
#    }
#  }
#}

#for(i in 1:1000){
#  for(j in 1:1000){
#      x=i^2 - j^2
#      y=2*i*j
#      z=i^2 + j^2
#      if(isPythag(x,y,z)){
#        sums1000=append(sums1000,list(x,y,z))
#    }
#  }
#}

for(a in 1:1000){
  for(b in 1:1000){
    for(c in 1:500){
      if(a*b + (1000*c) == 500000){
        if(isPythag(a,b,c)){
          print(paste(a,b,c))
        }
      }
    }
  }
}
