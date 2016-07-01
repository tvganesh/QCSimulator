##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: DotProduct
# This function performs a dot product between 2 vectors
#
###########################################################################################
#' @title
#' Dot product of 2 vectors
#'
#' @description
#' This function performs a dot product of 2 vectors
#'
#' @usage
#' DotProduct(a,b)
#'
#' @param a
#' Vector 1
#'
#' @param b
#' Vector 2
#'
#' @return result
#' The result of dot product
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
#' DotProduct(Hadamard(I2),q1_)
#' DotProduct(CNOT2_01(I4),q01_)
#'
#' @seealso
#' \code{\link{CNOT2_10}}\cr
#' \code{\link{PauliX}}\cr
#' \code{\link{measurement}}\cr
#' \code{\link{plotMeasurement}}\cr
#' \code{\link{CNOT5_03}}\cr
#' \code{\link{CNOT4_13}}\cr
#'
#' @export
#'

DotProduct <- function(a,b){
    result=a %*% b
    result
}
