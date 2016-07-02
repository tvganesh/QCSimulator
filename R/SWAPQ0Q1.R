##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: SWAPQ0Q1
# This function simulates a quantum circuit that swaps Q0 and Q1
#
###########################################################################################
#' @title
#' SWAP Q0 Q1
#'
#' @description
#' This function swaps q0 and q1
#'
#' @usage
#' SWAPQ0Q1(q)
#'
#' @param q
#' The input
#'
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
#' SWAPQ0Q1(q110_)
#' SWAPQ0Q1(q010_)
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
SWAPQ0Q1 <- function(q){
    c3=c4=NULL
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # 1st composite
    # H x I x I
    a = TensorProd(TensorProd(H,I),I)
    # 1st CNOT
    a1= CNOT3_02(a)
    a2 = DotProduct(a1,q)
    # 2nd composite
    # H x I x H
    b= TensorProd(TensorProd(H,I),H)
    b1 = DotProduct(b,a2)
    # Apply CNOT
    b2 = CNOT3_02(b1)

    #3rd composite
    # H x I x H
    c = TensorProd(TensorProd(H,I),H)
    c1 = DotProduct(c,b2)
    # Apply CNOT
    c2 = CNOT3_02(c1)

    # Apply CNOT
    d1 = CNOT3_12(c2)

    #4th composite
    # I x H x H
    e = TensorProd(TensorProd(I,H),H)

    e1 = DotProduct(e,d1)

    #Apply CNOT
    f1 = CNOT3_12(e1)


    #5th composite
    # I x H x H
    g = TensorProd(TensorProd(I,H),H)

    g1 = DotProduct(g,f1)

    #Apply CNOT
    h1 = CNOT3_12(g1)

    i1 = CNOT3_02(h1)

    # 6th composite
    # H x I x H
    j = TensorProd(TensorProd(H,I),H)
    k1 = DotProduct(j,i1)
    # Apply CNOT
    l1 = CNOT3_02(k1)

    # 7th composite
    # H x I x H
    m1 = TensorProd(TensorProd(H,I),H)
    n1 = DotProduct(m1,l1)
    # Apply CNOT
    o1 = CNOT3_02(n1)
    p1= measurement(o1)
    plotMeasurement(p1)


}
