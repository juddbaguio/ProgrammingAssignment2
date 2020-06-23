## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  setMatrix <- function (y) {
    x <<- y
    m <<- NULL
  }
  
  getMatrix <- function () x
  
  setInverse <- function (y) {
    m <<- solve(y)
  }
  
  getInverse <- function() m
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  
  if(!is.null(m)) {
    message('Getting cached data')
    return(m)
  }
  
  data <- x$getMatrix()
  
  m <- solve(data)
  x$setInverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
