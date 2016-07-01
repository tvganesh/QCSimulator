##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_31
# This function performs  CNOT operation on 4 qubits (Control qubit 3, Target qubit 1)
#
###########################################################################################
#' @title
#' 4 qubit CNOT gate (control-3,target-1)
#'
#' @description
#' This function applies a CNOT gate to 4 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 3 and target is qubit 1
#'
#' @usage
#' CNOT4_31(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT4_31 gate
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
#' CNOT4_31(q1001_)
#' CNOT4_31(I16)
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
CNOT4_31 <- function(a){
    cnot4_31=TensorProd(diag(2), CNOT3_20(diag(8)))
    result = cnot4_31 %*% a
    result
}
