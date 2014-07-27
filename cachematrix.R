## Put comments here that give an overall description of what your
## functions do

## This function creates a list containing 4 functions
## 1. gets the matrix
## 2. sets the matrix
## 3. gets the inverse
## 4. sets the inverse


makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) inverse <<- inv
  getinverse <- function() inverse
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## This function returns the inverse of the matrix, but before
## returning it checks whether the inverse is cached or not.
## If inverse is cached, the function returns the cached inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data...")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
