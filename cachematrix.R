## makeCacheMatrix Creates a matrix object that can cashe its inverse
## casheSolve computes the inverse if it has not already been created and not changed
  

  makeCacheMatrix <- function(x = matrix()) {

        ## set matix to null initially and store om global enviornment
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inv) m <<- inv  ## Sets matirx to its inverse
        getinv <- function() m             ## gets inversed matirx
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
  }
  
  
## Write a short comment describing this function

## WcacheSolve  checks to see if matrix set and inversed or calulates inverse if not
  cacheSolve <- function(x, ...) {
       m <- x$getinv()
        if(!is.null(m)) {
            if(x = m) {      ## if m not null and not changed use cached data
      
                  message("getting cached data")
                  return(m)
                  }
      
                }
        data <- x$get()
        m <- solve(m) ## calucates the inverse of the matrix
        x$setinv(m)   ## stores the inverted Matrix
        ## Return a matrix that is the inverse of 'x'  
        m
  }
