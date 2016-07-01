##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: Hadamard
# This function applies the Hadamard gate to the input
#
###########################################################################################
#' @title
#' Hadamard gate
#'
#' @description
#' This function applies a Hadamard gate on its input
#'
#' @usage
#' Hadamard(a)
#'
#' @param a
#' The input
#'
#' @return 2
#' The result of applying the Hadamard gate
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
#' Hadamard(Hadamard(I2))
#' Hadamard(I2)
#'
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
Hadamard <- function(a){
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    result <-H%*%a
    result

}
