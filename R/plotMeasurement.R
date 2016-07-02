##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: plotMeasurement
# This function plots the quantum state
#
###########################################################################################
#' @title
#' This function plots the result of a measurement
#'
#' @description
#' This function plots the output of a quantum circuit
#'
#' @usage
#' plotMeasurement(a)
#'
#' @param a
#' The vector
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
#' plotMeasurement(measurement(TensorProd(Hadamard(I2),Hadamard(I2))))
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
plotMeasurement <- function(a){
    d <- dim(a)
    qubits=p =NULL
    if(d[1] < d[2]){
        a <- t(a)
    }
    b <- length(a)

    # Create a dataframe
    c <- as.data.frame(a)
    colnames(c) <- c("p")

    # Check the length of the vector
    if(b == 2){
        c$qubits <- c("0","1")
    } else if(b == 4){
        c$qubits <- c("00","01","10","11")
    } else if(b == 8){
        c$qubits <- c("000","001","010","011","100","101","110","111")
    } else if(b == 16){
        c$qubits <- c("0000","0001","0010","0011","0100","0101","0110","0111",
                      "1000","1001","1010","1011","1100","1101","1110","1111")
    } else if(b == 32){
        c$qubits <- c("00000","00001","00010","00011","00100","00101","00110","00111",
                      "01000","01001","01010","01011","01100","01101","01110","01111",
                      "10000","10001","10010","10011","10100","10101","10110","10111",
                      "11000","11001","11010","11011","11100","11101","11110","11111")
    }

    else{
        print("Not supported")
    }
    ggplot(c,aes(x=qubits,y=p,fill=p)) + geom_bar(stat="identity") +
        xlab("Qubits") + ylab("Probability") + ylim(0,1.0) +
        ggtitle("Probabilty distribution") +
        geom_text(aes(label= format(p,digits=3,nsmall=0),y=p+0.05))

}
