## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
z <- NULL
	set <- function(y) {
		x <<- y
		Z <<- NULL
	}
	get <- function() x 
	setcache <- function() z <<- solve(x)
	getcache <- function() z 
	list(set = set, get = get,
             setcache = setcache,
             getcache = getcache)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	z <- x$getcache()
	if(!is.null(z)){
		message("Getting cached matrix")
		return(z)
	}
	data <- x$get()
	z <<- solve(data)
	x$setcache()
	x$getcache()

}
