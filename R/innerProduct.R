##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: innerProduct
# This function performs the inner product between 2 vectors
#
###########################################################################################
#' @title
#' Inner product of 2 vectors and computes the angle between vectors
#'
#' @description
#' This function performs a inner  product of 2 vectors and outputs the angle between
#' vectors
#'
#' @usage
#' innerProduct(a,b)
#'
#' @param a
#' Vector 1
#'
#' @param b
#' Vector 2
#'
#' @return theta
#' The angle between the vectors
#'
#' @references
#' \url{https://quantumexperience.ng.bluemix.net/}\cr
#' \url{https://gigadom.wordpress.com/2016/06/23/introducing-qcsimulator-a-5-qubit-quantum-computing-simulator-in-r/}\cr
#'
#' @author
#' Tinniam V Ganesh
#' @note
#' Maintainer: Tinniam V Ganesh \email{tvganesh.85@gmail.com}
#'
#' @examples
#' # Initialze global variables
#' init()
#' phi = matrix(c(1/2,sqrt(3)/2),nrow=2,ncol=1)
#' si = matrix(c(1/sqrt(2),1/sqrt(2)),nrow=2,ncol=1)
#' innerProduct(phi,si)
#'
#'
#' @seealso
#' \code{\link{CNOT2_10}}\cr
#' \code{\link{PauliX}}\cr
#' \code{\link{measurement}}\cr
#' \code{\link{plotMeasurement}}\cr
#' \code{\link{CNOT5_03}}\cr
#' \code{\link{CNOT5_13}}\cr
#'
#' @export
#'
innerProduct <- function(a,b){
    a1= Conj(a)
    result = t(a1) %*% b
    t = pi/acos(result)
    theta = 180/t
    theta
}
