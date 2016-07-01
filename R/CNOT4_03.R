##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_03
# This function performs  CNOT operation on 4 qubits (Control qubit 0, Target qubit 3)
#
###########################################################################################
#' @title
#' 4 qubit CNOT gate (control-0,target-3)
#'
#' @description
#' This function applies a CNOT gate to 4 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 0 and target is qubit 3
#'
#' @usage
#' CNOT4_03(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT4_03 gate
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
#' CNOT4_03(q1001_)
#' CNOT4_03(I16)
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
CNOT4_03 <- function(a){
    cnot4_03 = diag(16)
    cnot4_03[,c(9,10)] = cnot4_03[,c(10,9)]
    cnot4_03[,c(11,12)]=cnot4_03[,c(12,11)]
    cnot4_03[,c(13,14)]=cnot4_03[,c(14,13)]
    cnot4_03[,c(15,16)]=cnot4_03[,c(16,15)]
    result = cnot4_03 %*% a
    result
}
