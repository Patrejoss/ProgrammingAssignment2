## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##First we're going to make an object were it solve the matrix, and saves it
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function(){x}
  setInverse <- function(inverse){i <<- inverse}
  getInverse <- function(){i}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
##this function realize if it have been already solved and return the solution else it solves 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("Getting cache")
    return(i)
  }
  inver <- x$get
  i <- solve(inver, ...)
  x$setInverse(i)
  i
}
