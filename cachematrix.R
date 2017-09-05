## this function reads the matrix, inverses it and stores in the Cache
## this helps in reducing the multiple calculations and hence processer time

## This function reads the matrix, inverses it and stores in the cache

makeCacheMatrix <- function(x = matrix()) 
{ invmatrx <- NULL
set <- function(mat) x <<- mat
get <- function() x
setinv <- function() invmatrx <<- solve(x) 
getinv <- function() invmatrx
list(get = get, set = set, setinv = setinv, getinv = getinv)

}


## this function reads the above created matrix, checks if its already inversed and availabe
## available in the cache. If not, it will do the inverse and display the result

cacheSolve <- function(x, ...) 
{
  inv1 = x$getinv()
  if (!is.null(inv1))
  {
    message("Getting from Cached data")
    return(inv1)
  }
  inv <- x$get()
  inv1 <- solve(inv)
  x$setinv(inv1)
  inv1
  
}

