##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT2_01
# This function performs  CNOT operation on 2 qubits(Control qubit 0, Target qubit 1)
#
###########################################################################################
CNOT2_01 <- function(a){
    cnot= matrix(c(1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0),nrow=4,ncol=4)
    result <-cnot%*%a
    result

}
