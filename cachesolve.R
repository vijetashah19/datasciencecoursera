cachesolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data") #if data exists in the cache pull it up & return
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...) #if data not in the cache env generate the inverse & return
  x$setinverse(inv)
  inv
}