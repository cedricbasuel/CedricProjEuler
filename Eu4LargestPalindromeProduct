isPalindrome <- function(n){
  nstring=c()
  ncharac=as.character(n)
  for(i in 1:nchar(ncharac)){
    nstring[i]=substr(ncharac,i,i)
  }
  if(!(length(nstring)%%2==0)){
    nstring=nstring[-(floor(length(nstring)/2)+1)]
  }
 sum=0 
  for(i in 1:ceiling(length(nstring)/2)){
    if(nstring[i]==nstring[length(nstring)+1-i]){
      sum=sum +2
    }
  }
 if(sum==length(nstring)){
   return(T)
 }
 else{#print(paste(n,"is not a palindrome"))
  return(F)}
  #return(strsplit(ncharac,""))
}

products=c()
for(i in 101:999){
  for(j in 101:999){
    curt=(999-(i-101))*(999-(j-101))
    
    if(isPalindrome(curt)){
      products[i-100]=curt
    }
  }
}
print(max(products,na.rm=T))
