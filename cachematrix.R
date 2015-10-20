## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Makes list containing matrix, it's cached 
## inverse matrix and getters/setters.
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setInverse <- function(ss) s <<- ss;
  getInverse <- function() s
  result <- list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse);
  result$set(x);
  result
}


## Write a short comment describing this function
## Receives list from makeCahceMatrix() and 
## returns inverse matrix.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  s <- x$getInverse();
  if (is.null(s)) {
    s <- solve(x$get());
    x$setInverse(s);
  } else {
    message('using cached value');
  }
  s
}
