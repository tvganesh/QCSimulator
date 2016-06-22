##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: Hadamard
# This function applies the Hadamard gate to the input
#
###########################################################################################
Hadamard <- function(a){
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    result <-H%*%a
    result

}
