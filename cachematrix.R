## Programming Assignment 2: Lexical Scoping


## This function creates a special "matrix" object
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
## creates the inverse and places in cache
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
## returns cached value if exists
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
	message("no cached data, creating inverse")
  m
## creates inverse if not in cache
}

