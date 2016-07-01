##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CPauliX
# This function computes  a controlled Pauli X gate
#
###########################################################################################
#' @title
#' Controlled Pauli X gate
#'
#' @description
#' This function applies a controlled Pauli X gate on its input
#'
#' @usage
#' CPauliX(q)
#'
#' @param q
#' The input
#'
#' @return 2
#' The result of applying the CPauliX gate
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
#' CPauliX(q11_)
#' CPauliX(I4)
#'
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
CPauliX <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    # Compute 1st composite
    a = TensorProd(I,I)
    b = CNOT2_01(a)
    # Compute 1st composite
    c = TensorProd(I,I)
    #Take dot product
    d = DotProduct(c,b)
    #Take dot product with qubit
    e = DotProduct(d,q)
    e
}
