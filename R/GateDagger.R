##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: GateDagger
# This function computes  the dagger function (transpose of conjugate) of a
# unitary matrix
#
###########################################################################################
#' @title
#' Gate dagger of a vector
#'
#' @description
#' This function performs a gate dagger transformation. It performs the transpose of
#' the complex conjugate of the unitary matrix
#'
#' @usage
#' GateDagger(a)
#'
#' @param a
#' Matrix a
#'
#' @return gateDagger
#' The result of performing gate dagger function
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
#' GateDagger(TGate(I2))
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
GateDagger <- function(a){
    aConj = Conj(a)
    gateDagger <- t(aConj)
    gateDagger
}
