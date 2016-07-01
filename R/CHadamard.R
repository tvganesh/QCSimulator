##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CHadamard
# This function computes  a controlled Hadamard Gate
#
###########################################################################################
#' @title
#' controlled Hadamard Gate
#'
#' @description
#' This function applies a controlled Hadamard gate om the input
#'
#' @usage
#' CHadamard(q)
#'
#' @param q
#' The input
#'
#' @return k
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
#' CHadamard(q00_)
#' CHadamard(I4)
#'
#' @seealso
#' \code{\link{CNOT2_01}}\cr
#' \code{\link{PauliX}}\cr
#'
#' @import ggplot2
#'
#' @export
#'

CHadamard <- function (q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # Compute 1st chain
    a = SGate(Hadamard(I))

    # Compute 2nd chain
    b = S1Gate(Hadamard(I))

    #Compute 1st composite
    c = kronecker(a,b,"*")

    # Apply CNOT
    d = CNOT2_01(c)
    d1 = d %*% q ############# To do - Remove q

    # Compute 3rd chain
    e = TGate(Hadamard(I))

    # Compute 2nd composite
    f1 = kronecker(I,e,"*")

    # Apply CNOT
    f2 = CNOT2_01(f1)

    # Compute the result of 2nd composite
    g1 = f2 %*% d1


    # Compute 3rd gate chain
    i=PauliX(SGate(Hadamard(TGate(I))))
    j = kronecker(I,i,"*")
    k = j %*% g1
    k

}
