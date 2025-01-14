## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv_m <- NULL    #initializing to null
    set <- function(y) {
        x <<- y
        inv_m <<- NULL
    }
    get <- function() {x}
    setinv <- function(inverse) inv_m <<- inverse
    getinv <- function() {inv_m}
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    inv_m <- x$getinv()
    if(!is.null(inv_m)) {
        message("getting cached data")
        return(inv_m)
    }
    matr <- x$get()
    inv_m <- solve(matr, ...)
    x$setinv(inv_m)
    inv_m    
}
