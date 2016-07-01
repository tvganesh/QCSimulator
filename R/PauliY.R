##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: PauliY
# This function performs  Pauli Y operation on the input
#
###########################################################################################
#' @title
#' Controlled Pauli Y gate
#'
#' @description
#' This function applies a  Pauli Y gate on its input
#'
#' @usage
#' PauliY(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the PauliY gate
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
#' PauliY(q1_)
#' Hadamard(PauliY(I2))
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
PauliY <- function(a){
    Y=matrix(c(0,-1i,1i,0),nrow=2,ncol=2)
    result <-Y%*%a
    result

}
