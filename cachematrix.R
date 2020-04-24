## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This Function saves the value of the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <<- NULL
        setmatrix <- function(y) {
                x <<- y
                m <<- NULL 
        }
        getmatrix <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
##This function returns the inverse of a matrix x.
##If the inverse has already been calculated, it
##returns the cached data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getmatrix()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
