Functions to get the nth triangular/pentagonal/hexagonal numbers (which are actually useless in solving the problem):
tri1 = function(n){
  return(n*(n+1)/2)
}
tri0 = function(n){
  return((n-1)*n/2)
}
pent = function(n){
  return(tri1(n) + 2*tri0(n))
}
hexa = function(n){
  return(2*tri1(n) + (n-1)^2 -1)
}

But i'll make use of them anyway as i create functions that store these numbers into separate arrays:
pentahex = function(n){
  penta = c()
  hexag = c()
  #tria  = c()
  #tria[1]  = 1
  penta[1] = 1
  hexag[1] = 1
  for(i in 1:n){
    penta[i] = pent(i) 
    hexag[i] = hexa(i)
    #tria[i]  = tri1(i)
  }
  return(intersect(penta,hexag))
}

The pentahex() function requires an integer that will serve as the upper limit of the iterations, so it must be large enough (i tried 100,000 and that did it)
Basically i'm constructing three (well, only 2 since the hexagonal numbers are a subset of the triangular numbers) lists for each class of number and to know which one qualifies as all three I get the intersections of the three lists.

