##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: PauliX
# This function performs  Pauli X operation on the input
#
###########################################################################################
#' @title
#' Controlled Pauli X gate
#'
#' @description
#' This function applies a  Pauli X gate on its input
#'
#' @usage
#' PauliX(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the PauliX gate
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
#' PauliX(q1_)
#' Hadamard(PauliX(I2))
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
PauliX <- function(a){
    X= matrix(c(0,1,1,0),nrow=2,ncol=2)
    result <-X%*%a
    result

}
