##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_30
# This function performs  CNOT operation on 5 qubits (Control qubit 3, Target qubit 0)
#
###########################################################################################
#' @title
#' 5 qubit CNOT gate (control-3,target-0)
#'
#' @description
#' This function applies a CNOT gate to 5 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 3 and target is qubit 0
#'
#' @usage
#' CNOT5_30(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT5_30 gate
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
#' CNOT5_30(q10010_)
#' CNOT5_30(I32)
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
CNOT5_30 <- function(a){
    cnot5_30=TensorProd(CNOT4_30(diag(16)),diag(2))
    result = cnot5_30 %*% a
    result
}
