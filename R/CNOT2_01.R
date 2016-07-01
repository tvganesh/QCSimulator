##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT2_01
# This function performs  CNOT operation on 2 qubits(Control qubit 0, Target qubit 1)
#
###########################################################################################
#' @title
#' 2 qubit CNOT gate (control-0,target-1)
#'
#' @description
#' This function applies a CNOT gate to 2 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 0 and target is qubit 1
#'
#' @usage
#' CNOT2_01(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT2_01 gate
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
#' CNOT2_01(q11_)
#' CNOT2_01(I4)
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

CNOT2_01 <- function(a){
    cnot= matrix(c(1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0),nrow=4,ncol=4)
    result <-cnot%*%a
    result

}
