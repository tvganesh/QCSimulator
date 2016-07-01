##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT3_20
# This function performs  CNOT operation on 3 qubits (Control qubit 2, Target qubit 0)
#
###########################################################################################
#' @title
#' 3 qubit CNOT gate (control-2,target-0)
#'
#' @description
#' This function applies a CNOT gate to 3 qubits. The qubits start from 0,1,2,3,4. Here
#' control is qubit 2 and target is qubit 0
#'
#' @usage
#' CNOT3_20(a)
#'
#' @param a
#' The input
#'
#' @return result
#' The result of applying the CNOT3_20 gate
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
#' CNOT3_20(q101_)
#' CNOT3_20(I8)
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
CNOT3_20 <- function(a){
    cnot3_20=matrix(c(1,0,0,0,0,0,0,0,
                      0,0,0,0,0,1,0,0,
                      0,0,1,0,0,0,0,0,
                      0,0,0,0,0,0,0,1,
                      0,0,0,0,1,0,0,0,
                      0,1,0,0,0,0,0,0,
                      0,0,0,0,0,0,1,0,
                      0,0,0,1,0,0,0,0),nrow=8,ncol=8)


    result = cnot3_20 %*% a
    result
}
