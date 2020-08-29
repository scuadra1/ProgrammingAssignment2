## Put comments here that give an overall description of what your
## functions do

# ok

## Write a short comment describing this function

# This function computes the inverse of a square matrix and select the cache of this

makeCacheMatrix <- function(x = matrix()) {
  
  z <- NULL
  set <- function(y){
    x <<- y
    z <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) z <<- inverse
  getInverse <- function() z 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function

# This function helps store the cache of the matrix

cacheSolve <- function(x, ...) {
      
  z <- x$getInverse()
  
  if(!is.null(z)){
    message("getting cached data")
    return(z)
  }
  
  xy <- x$get()
  
  z <- solve(xy,...)
  
  x$setInverse(z)
  
  z
  
}



