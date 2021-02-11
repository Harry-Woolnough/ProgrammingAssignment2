# These functions create a matrix which is capable of cacheing its 
#inverse and then displaying it


# This function creates a matrix which is capable of cacheing its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y= matrix()) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

#This function checks whether the inverse has already been calculated for
#a matrix, if so it returns the data, and if not it calculates the inverse
#and then display the inverse of the matrix.

cachesolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
