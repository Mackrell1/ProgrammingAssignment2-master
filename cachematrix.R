## Put comments here that give an overall description of what your
## functions do

## This function has four steps: setting, then getting the value of the matrix
## and then setting, and getting the inverse of that matrix.

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
      
      x <<-y
      inverse2 <<-NULL
    }
    get <- function () x
    setinverse <- function(inverse2) inverse <<- inverse2
    getinverse <- function () inverse
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function returns the inverse of the matrix.  It has two steps: it checks if the inverse of the matrix
## has already been found, and if so, returns the result without computation.  
##Otherwise, it computes the inverse and then sets the value in the cache.


cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
        if (!is.null(inverse))  {

          return (inverse)
        }
        
        data <- x$get()
        inverse <- solve(data)
        x$setinverse(inverse)
        return (inverse)
        
}
