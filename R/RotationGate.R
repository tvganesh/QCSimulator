##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: RotationGate
# This function applies the rotation gate on the input
#
###########################################################################################
#' @title
#' This fucntion applies the rotation gate
#'
#' @description
#' This function applies the rotation gate on its input through an angle 't'
#'
#' @usage
#' RotationGate(t,a)
#'
#' @param t
#' The angle to rotate
#'
#' @param a
#' The vector
#'
#' @return result
#' The result of applying the Rotation gate
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
#' RotationGate(30,q0_)
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
RotationGate <- function(t, a){
    R= matrix(c(cos(t),sin(t),-sin(t),cos(t)),nrow=2,ncol=2)
    result <-R%*%a
    result

}
