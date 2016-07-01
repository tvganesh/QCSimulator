##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CSWAP
# This function computes  a controlled swap of qubits
#
###########################################################################################
#' @title
#' Controlled SWAP gate
#'
#' @description
#' This function applies a controlled swap of qubits gate on its input
#'
#' @usage
#' CSWAP(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CSWAP gate
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
#' CSWAP(q11_)
#' CSWAP(I4)
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
CSWAP <- function(a){
    result =CNOT2_01(CNOT2_10(CNOT2_01(a)))
    result
}
