##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: S1Gate
# This function applies the S1 Gate on the input
#
###########################################################################################
#' @title
#' Controlled S1Gate
#'
#' @description
#' This function applies a  S1Gate on its input
#'
#' @usage
#' S1Gate(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the S1Gate
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
#' S1Gate(q1_)
#' S1Gate(PauliX(I2))
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
S1Gate <- function(a){
    S1=matrix(c(1,0,0,-1i),nrow=2,ncol=2)
    result <-S1%*%a
    result

}
