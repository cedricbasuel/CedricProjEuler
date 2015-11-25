fib=c()
fib[1]=1
fib[2]=1
i=3
sum=0
curt=0
max=4000000
#for(i in 3:50){
 # fib[i] = fib[i-1] + fib[i-2]
#}

while(curt < max){
  curt = fib[i-1] + fib[i-2]
  fib[i] = curt
  i=i+1
}

for(i in 1:length(fib)){
  if(fib[i]%%2==0){ sum = sum+ fib[i]}
}

print(sum)
