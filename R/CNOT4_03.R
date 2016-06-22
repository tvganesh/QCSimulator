##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_03
# This function performs  CNOT operation on 4 qubits (Control qubit 0, Target qubit 3)
#
###########################################################################################
CNOT4_03 <- function(a){
    cnot4_03 = diag(16)
    cnot4_03[,c(9,10)] = cnot4_03[,c(10,9)]
    cnot4_03[,c(11,12)]=cnot4_03[,c(12,11)]
    cnot4_03[,c(13,14)]=cnot4_03[,c(14,13)]
    cnot4_03[,c(15,16)]=cnot4_03[,c(16,15)]
    result = cnot4_03 %*% a
    result
}
