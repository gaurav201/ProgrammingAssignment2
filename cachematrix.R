## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

'''makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}'''

## A better way to get the inverse of a matrix

## cache data first

makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  set <- function(y) {
    x <<- y
    invr <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) invr <<- inverse
  getInverse <- function() invr
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## solve for the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invr = x$getinv()
  
  # already been calculated?
  if (!is.null(invr)){
    # get it from the cache
    message("getting cache data")
    return(invr)
  }
  
  # calculates the inverse 
  mat.data = x$get()
  invr = solve(mat.data, ...)
  x$setinv(invr)
  
  return(invr)
}
