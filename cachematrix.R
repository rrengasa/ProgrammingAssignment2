## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set the value of matrix
## get the value of matrix
## set the inverse of matrix
## get the inverse of matrix
makeCacheMatrix <- function(x) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## return inverse of matrix from cache if matrix has not changed
## else return by computing inverse and store computed value in cache
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting from cache")
    return (i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
