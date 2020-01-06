## Put comments here that give an overall description of what your
## functions do

## Creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) { ##defines the argument
  inv <- NULL ##Creates inv as NULL
  set <- function(y) { ##defines the new set function
    x <<- y ##Value of matrix
    inv <<- NULL ##If new matrix, set inv to NULL
  }
  get <- function() x ##Define the get function
  
  setinverse <- function(inverse) inv <<- inverse #Assigns the value of inv
  getinverse <- function() inv ##Gets value of inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ##To refer to functions with $ operator

  }


## Computes the inverse of the matrix returned by the function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("Retrieving cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve, data, ...)
  x$setinverse(inv)
  inv
}
