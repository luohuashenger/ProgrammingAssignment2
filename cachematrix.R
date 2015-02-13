## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL #set the solve matrix to NULL
        set <- function(y) {
          x <<-y
          s <<- NULL
        } #defines a function to set the vector x to a new vector y, and reset the solve to null
        get <- function() x
        setsolve <- function(solve) s <<- solve # set the s to solve
        getsolve <- function() m # return the solve s
        list (set = set, get = get, setsolve = setsolve, getsolve = get solve)
} # return the special vector containing all of the functions just defined


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        # if the inverse is already calculated, return it
        if(!is.null(s)) {
            message("getting cached data")
            return(s)
        }
        
        # the inverse is not yet calculated, calculate it
        data <- x$get()
        s <- solve(data,...)
        
        # cache the inverse
        x$setslove(s)
        
        # return it
        s
}
