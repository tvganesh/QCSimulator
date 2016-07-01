##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: TensorProd
# This function performs a Tensor Product between the 2 vectors
#
###########################################################################################
#' @title
#' Tensor  product of 2 vectors
#'
#' @description
#' This function performs a tensor product of 2 vectors
#'
#' @usage
#' TensorProd(a,b)
#'
#' @param a
#' Vector 1
#'
#' @param b
#' Vector 2
#'
#' @return result
#' The tensor product of the vectors
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
#' TensorProd(Hadamard(I2),Hadamard(I2))
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
TensorProd <- function(a,b){
    result=kronecker(a,b, "*")
    result

}
