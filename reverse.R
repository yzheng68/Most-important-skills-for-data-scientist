#' reverse 
#'
#' @param x 
#'
#' @return
#' @export
#'
#' @examples

reverse<-function(x){
  if(length(x)>0) x[length(x):1] else x
}