##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: SGate
# This function applies the S Gate on the input
#
###########################################################################################
#' @title
#' Apply a SGate
#'
#' @description
#' This function applies a  SGate on its input
#'
#' @usage
#' SGate(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the SGate gate
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
#' SGate(q1_)
#' SGate(Hadamard(I2))
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
SGate <- function(a){
    S=matrix(c(1,0,0,1i),nrow=2,ncol=2)
    result <-S%*%a
    result

}
