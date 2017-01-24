##The first function returns the foll: functions-
## set & get functions - set and get the value of a matrix resp.
## setcache & getcache- set and get the cached value of the inverse matrix (NOTE: solve has been used here to get the inverse of the matrix)
## cm is the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        cm <-NULL
        set <- function(y){
                x<<- y
                cm <<- NULL      
                }
        get <- function(){
                x
                }
        
        setcache <- function(solve){
                cm <<-solve
                }
        getcache <- function(){
                cm
                }
                
        list(set= set, get = get, 
             setcache=setcache, 
             getcache=getcache)
                

}


## This function here searched for the inverse matrix, if exists returns it else calculates the inverse of the matrix

cacheSolve <- function(x, ...) {
        cm <- x$getcache()
               if(!is.null(cm)) {
                message("getting cached data")
                return(cm)
        }
    data <- x$get()
        cm <- solve(data)
        x$setcache(cm)
        cm

}
