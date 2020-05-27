## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #it sets null values in inverse_matrix variable
  inverse_matrix = NULL
  set = function(y) {
    x <<- y
    inverse_matrix <<- NULL
  }
  get = function() x
  setinverse_matrix = function(inverse) inverse_matrix <<- inverse
  getinverse_matrix = function() inverse_matrix
  list(set=set, get=get, setinverse_matrix=setinverse_matrix, getinverse_matrix=getinverse_matrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse_matrixerse of 'x'
  
  inverse_matrix = x$getinverse_matrix()
  
  # checks the condition if inverse_matrix is null and prints accordingly
  
  if (!is.null(inverse_matrix)){
    message("getting cached data")
    return(inverse_matrix)
  }
  
  # if not null thenn the following function calculates the inverse_matrixerse 
  matrix_values = x$get()
  inverse_matrix = solve(matrix_values, ...)
  
  # the code below sets the value of the inverse_matrixerse in the cache 
  x$setinverse_matrix(inverse_matrix)
  
  return(inverse_matrix)
}
 