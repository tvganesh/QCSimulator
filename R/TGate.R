##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: TGate
# This function applies a T gate
#
###########################################################################################
#' @title
#' Apply a TGate
#'
#' @description
#' This function applies a  TGate on its input
#'
#' @usage
#' TGate(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the TGate gate
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
#' TGate(q1_)
#' TGate(S1Gate(Hadamard(I2)))
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
TGate <- function(a){
    T=matrix(c(1,0,0,exp(1i*pi/4)),nrow=2,ncol=2)
    result <-T%*%a
    result

}
