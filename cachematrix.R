## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
 get <- function() x
 setInv <- function(Inv) {
   m <<- Inv
 }
 getInv <- function() m
 list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  k <- x$getInv()
  if (!is.null(k)) {
    print("Cache")
    return(k)    
  }
  data <- x$get()
  x$setInv(solve(data,...))
  x$getInv()  
}