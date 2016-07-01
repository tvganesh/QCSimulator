##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: Toffoli State
# This function is a quantum circuit for generating the Toffoli state
#
###########################################################################################
#' @title
#' Apply a Toffoli state
#'
#' @description
#' This function applies a  Toffoli state on its input
#'
#' @usage
#' ToffoliState(a)
#'
#' @param a
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
#' ToffoliState(q100_)
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
ToffoliState <- function(a){
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # 1st composite
    # H x H x H
    a = TensorProd(TensorProd(H,H),H)
    # 1st CNOT
    a1= CNOT3_12(a)

    # 2nd composite
    # I x I x T1Gate
    b = TensorProd(TensorProd(I,I),T1Gate(I))
    b1 = DotProduct(b,a1)
    c = CNOT3_02(b1)

    # 3rd composite
    # I x I x TGate
    d = TensorProd(TensorProd(I,I),TGate(I))
    d1 = DotProduct(d,c)
    e = CNOT3_12(d1)

    # 4th composite
    # I x I x T1Gate
    f = TensorProd(TensorProd(I,I),T1Gate(I))
    f1 = DotProduct(f,e)
    g = CNOT3_02(f1)

    #5th composite
    # I x T x T
    h = TensorProd(TensorProd(I,TGate(I)),TGate(I))
    h1 = DotProduct(h,g)
    i = CNOT3_12(h1)

    #6th composite
    # I x H x H
    j = TensorProd(TensorProd(I,Hadamard(I)),Hadamard(I))
    j1 = DotProduct(j,i)
    k = CNOT3_12(j1)

    # 7th composite
    # I x H x H
    l = TensorProd(TensorProd(I,Hadamard(I)),Hadamard(I))
    l1 = DotProduct(l,k)
    m = CNOT3_12(l1)
    n = CNOT3_02(m)

    #8th composite
    # T x H x T1
    o = TensorProd(TensorProd(TGate(I),Hadamard(I)),T1Gate(I))
    o1 = DotProduct(o,n)
    p = CNOT3_02(o1)
    result = measurement(p)
    plotMeasurement(result)

}
