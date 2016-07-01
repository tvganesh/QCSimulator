##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_12
# This function performs  CNOT operation on 5 qubits (Control qubit 1, Target qubit 2)
#
###########################################################################################
#' @title
#' 5 qubit CNOT gate (control-1,target-2)
#'
#' @description
#' This function applies a CNOT gate to 5 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 1 and target is qubit 2
#'
#' @usage
#' CNOT5_12(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT5_12 gate
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
#' CNOT5_12(q10010_)
#' CNOT5_12(I32)
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
CNOT5_12 <- function(a){
    cnot5_12=TensorProd(CNOT4_12(diag(16)),diag(2))
    result = cnot5_12 %*% a
    result
}
