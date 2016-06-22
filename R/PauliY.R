##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: PauliY
# This function performs  Pauli Y operation on the input
#
###########################################################################################
PauliY <- function(a){
    Y=matrix(c(0,-1i,1i,0),nrow=2,ncol=2)
    result <-Y%*%a
    result

}
