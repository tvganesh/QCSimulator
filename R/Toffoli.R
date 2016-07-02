##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: Toffoli
# This function applies a Toffoli gate
#
###########################################################################################
#' @title
#' Apply a Toffoli gate
#'
#' @description
#' This function applies a  Toffoli on its input
#'
#' @usage
#' Toffoli(q)
#'
#' @param q
#' The input
#'
#' @return c
#' The result of applying the TGate gate
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
#' Toffoli(q100_)
#' Toffoli(q101_)
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
Toffoli <- function(q){

    init()
    cat("1")
    X= matrix(c(0,1,1,0),nrow=2,ncol=2)
    I= matrix(c(1,0,0,1),nrow=2,ncol=2)
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    cat("1")
    a = TensorProd(X,I)
    cat("1")
    c = TensorProd(a,I)
    print(q)
    cat("1")
    d = DotProduct(c,q)
    d

}
