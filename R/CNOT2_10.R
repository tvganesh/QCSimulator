##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT2_01
# This function performs  CNOT operation on 2 qubits (Control qubit 1, Target qubit 0)
#
###########################################################################################
CNOT2_10 <- function(a){
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    cnot= matrix(c(1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0),nrow=4,ncol=4)
    m =TensorProd(H,H)

    cnot2_10 = m %*% cnot %*%m
    result <-cnot2_10%*%a
    result

}
