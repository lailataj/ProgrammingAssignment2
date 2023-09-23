##makecachematrix consists of set, get, setinv, getinv
library(MASS)
MakeCacheMatrix <- function(x = matrix()) {
  #initializing inverse as NULL
  inv<-NULL
  # set the original matrix and reset inverse
  set<- function(y) {
    x<<- y
    inv<<- NULL
  }
  # get the original matrix
  get <- function()x
  setinv<- function(inverse)inv <<- inverse
  getinv<- function(){
    inver <- ginv(x)
    inver%*%(x)
  } #function to obtain inverse of the matrixe
  list(set = set, get = get, 
       Setinv = setinv, getinv = getinv)
}

