##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CPauliY
# This function computes  a controlled Pauli Y gate
#
###########################################################################################
#' @title
#' Controlled Pauli Y gate
#'
#' @description
#' This function applies a controlled Pauli Y gate on its input
#'
#' @usage
#' CPauliY(q)
#'
#' @param q
#' The input
#'
#' @return 2
#' The result of applying the CPauliY gate
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
#' CPauliY(q11_)
#' CPauliY(I4)
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
CPauliY <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # Compute 1st composite
    a = TensorProd(I, S1Gate(I))

    # Apply CNOT
    b = CNOT2_01(a)

    # Compute 2nd composite
    c = TensorProd(I, SGate(I))

    # Compute result
    d = DotProduct(c,b)

    e = DotProduct(d,q)
    e
}
