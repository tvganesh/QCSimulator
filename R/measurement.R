##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: measurement
# This function  performs a measurement of a quantum state
#
###########################################################################################
#' @title
#' Computes the square of the modulus
#'
#' @description
#' This function computes the square of the amplitude of the vectors
#'
#' @usage
#' measurement(a)
#'
#' @param a
#' The vector
#'
#'
#' @return x
#' The square of the modulus of the vector
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
#' measurement(TGate(PauliX(I2)))
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
measurement <- function(a) {
     d <- dim(a)
     v <- NULL
     for(i in 1:d[1] ){
         v[i] <- Mod(a[i,1])^2
     }
     l = length(v)
     w = as.data.frame(v)
     x = t(w)
     if(l == 2){
         colnames(x) <- c("0","1")
     } else if (l == 4){
         colnames(x) <- c("00","01","10","11")
     } else if (l == 8){
         colnames(x) <- c("000","001","010","011","100","101","110","111")
     } else if (l == 16){
         colnames(x) <- c("0000","0001","0010","0011","0100","0101","0110","0111",
                          "1000","1001","1010","1011","1100","1101","1110","1111")
     } else if(l == 32){
         colnames(x) <- c("00000","00001","00010","00011","00100","00101","00110","00111",
                          "01000","01001","01010","01011","01100","01101","01110","01111",
                          "10000","10001","10010","10011","10100","10101","10110","10111",
                          "11000","11001","11010","11011","11100","11101","11110","11111")
     }

     x

}
