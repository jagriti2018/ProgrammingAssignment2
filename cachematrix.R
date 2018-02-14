## Below two function creates special object "matrix" and chae its inverse. It has assumed  that matrix supplied is always square matrix and reversible.

## Write a short comment describing this function##makeCacheMatrix function cretaes a sepacial "matrix" object to do following
## set value of matrix
## get value of matrix
## set matrix inverse value
## get matrix inverse value

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
 }
> 

##  cacheSolve function calculates inverse of the special matrix . It also chekc if inverse has already been calculated.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matdata<- x$get()
  inv <- solve(matdata, ...)
  x$setinverse(inv)
  return(inv)
}

