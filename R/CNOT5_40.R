##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_40
# This function performs  CNOT operation on 5 qubits (Control qubit 4, Target qubit 0)
#
###########################################################################################
#' @title
#' 5 qubit CNOT gate (control-4,target-0)
#'
#' @description
#' This function applies a CNOT gate to 5 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 4 and target is qubit 0
#'
#' @usage
#' CNOT5_40(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT5_40 gate
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
#' CNOT5_40(q10010_)
#' CNOT5_40(I32)
#'
#' @seealso
#' \code{\link{CNOT2_10}}\cr
#' \code{\link{PauliX}}\cr
#' \code{\link{measurement}}\cr
#' \code{\link{plotMeasurement}}\cr
#' \code{\link{CNOT5_03}}\cr
#' \code{\link{CNOT5_13}}\cr
#'
#' @export
#'
CNOT5_40 <- function(a){

    cnot5_40 = diag(32)
    cnot5_40[,c(2,18)] = cnot5_40[,c(18,2)]
    cnot5_40[,c(4,20)] = cnot5_40[,c(20,4)]
    cnot5_40[,c(6,22)] = cnot5_40[,c(22,6)]
    cnot5_40[,c(8,24)] = cnot5_40[,c(24,8)]
    cnot5_40[,c(10,26)] = cnot5_40[,c(26,10)]
    cnot5_40[,c(12,28)] = cnot5_40[,c(28,12)]
    cnot5_40[,c(14,30)] = cnot5_40[,c(30,14)]
    cnot5_40[,c(16,32)] = cnot5_40[,c(32,16)]
    result = cnot5_40 %*% a
    result

}
