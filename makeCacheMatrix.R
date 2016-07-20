makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL               # initialize inv as NULL; will hold value of matrix inverse
  set <- function(y) {      #set function to assign new value 
    x <<- y                 #value of matrix in parent env
    inv <<- NULL            #if there is a new matrix, reset inv to NULL
  }
  
  get <- function(){x}      #return value of the matrix
  setinverse <- function(inverse) {inv <<- inverse}   #gives value of inv in parent env
  getinverse <- function() {inv}      # To return inverse of the function
  list(set = set, get = get,
       setinverse = setinverse,        # to call get, set, getinverse, setinverse
       getinverse = getinverse)        # using $
}