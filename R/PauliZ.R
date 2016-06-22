##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: PauliZ
# This function performs  Pauli Z operation on the input
#
###########################################################################################
PauliZ <- function(a){
    Z=matrix(c(1,0,0,-1),nrow=2,ncol=2)
    result <-Z%*%a
    result

}
