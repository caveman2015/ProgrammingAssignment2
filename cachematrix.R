## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function will cache my input (inverse) and store it in 'i'.
#the getinverse function will retireve 'i'

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x<<-y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) {i <<- inv}
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
#this function will check if the inverse is already cached
#if not then this function will calculate the inverse and cache it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  if(!is.null(i)){
    message("retrieving cached matrix inverse")
    return(i) 
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}

