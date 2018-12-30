## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invMatrix <- NULL
    
    setMatrix <- function(y) {
        x <<- y
        invMatrix <<- NULL
    }
    
    getMatrix <- function() x                             
    setInverse <- function(inverse) invMatrix <<- inverse  
    getInverse <- function() invMatrix                     
    list(setMatrix = setMatrix, getMatrix = getMatrix,
         setInverse = setInverse, getInverse = getInverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
}
