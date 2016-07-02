##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: T1Gate
# This function applies a T1 gate
#
###########################################################################################
#' @title
#' Apply a T1Gate
#'
#' @description
#' This function applies a  T1Gate on its input
#'
#' @usage
#' T1Gate(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the T1Gate gate
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
#' T1Gate(q1_)
#' T1Gate(SGate(Hadamard(I2)))
#'
#'
#' @seealso
#' \code{\link{CNOT2_10}}\cr
#' \code{\link{PauliX}}\cr
#' \code{\link{measurement}}\cr
#' \code{\link{plotMeasurement}}\cr
#' \code{\link{CNOT5_03}}\cr
#' \code{\link{CNOT3_12}}\cr
#'
#' @export
#'
T1Gate <- function(a){
    T1=matrix(c(1,0,0,exp(-1i*pi/4)),nrow=2,ncol=2)
    result <-T1%*%a
    result

}
