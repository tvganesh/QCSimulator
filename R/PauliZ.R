##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: PauliZ
# This function performs  Pauli Z operation on the input
#
###########################################################################################
#' @title
#' Controlled Pauli Z gate
#'
#' @description
#' This function applies a  Pauli Z gate on its input
#'
#' @usage
#' PauliZ(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the PauliZ gate
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
#' PauliZ(q1_)
#' Hadamard(PauliZ(I2))
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
PauliZ <- function(a){
    Z=matrix(c(1,0,0,-1),nrow=2,ncol=2)
    result <-Z%*%a
    result

}
