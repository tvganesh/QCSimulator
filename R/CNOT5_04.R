##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_04
# This function performs  CNOT operation on 5 qubits (Control qubit 0, Target qubit 4)
#
###########################################################################################
#' @title
#' 5 qubit CNOT gate (control-0,target-4)
#'
#' @description
#' This function applies a CNOT gate to 5 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 0 and target is qubit 3
#'
#' @usage
#' CNOT5_04(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT5_04 gate
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
#' CNOT5_04(q10010_)
#' CNOT5_04(I32)
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
CNOT5_04 <- function(a){
    cnot5_04 = diag(32)
    cnot5_04[,c(17,18)] = cnot5_04[,c(18,17)]
    cnot5_04[,c(19,20)] = cnot5_04[,c(20,19)]
    cnot5_04[,c(21,22)] = cnot5_04[,c(22,21)]
    cnot5_04[,c(23,24)] = cnot5_04[,c(24,23)]
    cnot5_04[,c(25,26)] = cnot5_04[,c(26,25)]
    cnot5_04[,c(27,28)] = cnot5_04[,c(28,27)]
    cnot5_04[,c(29,30)] = cnot5_04[,c(30,29)]
    cnot5_04[,c(31,32)] = cnot5_04[,c(32,31)]
    result = cnot5_04 %*% a
    result

}
