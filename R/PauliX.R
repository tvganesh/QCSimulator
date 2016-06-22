##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: PauliX
# This function performs  Pauli X operation on the input
#
###########################################################################################
PauliX <- function(a){
    X= matrix(c(0,1,1,0),nrow=2,ncol=2)
    result <-X%*%a
    result

}
