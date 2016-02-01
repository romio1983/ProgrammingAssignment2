## Put comments here that give an overall description of what your
## functions do

## The below function, makeCacheMatrix, creates a matrix, which is really a list containing a function to
## a) set the value of the matrix
## b) get the value of the matrix
## c) set the inverse of the matrix
## d) get the inverse of the matrix

makeCacheMatrix <- function(x=matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
      inv <<- NULL
     }
  get <-function()    x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The following function calculates the inverse of the matrix created with the above function. 
## However, it first checks to see if the inverse has already been calculated. If so, it gets the inverse from the cache 
## and skips the computation. Otherwise, it calculates the inverse of the matrix and sets the value of the inverse
## in the cache via the setinverse function.

cachesolve <- function(x, ...) {
  inv  <- getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- get()
    inv <- solve(x, ...)
    setinverse(inv)
  inv
   ## Return a matrix that is the inverse of 'x'
  }
       

