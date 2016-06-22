##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_03
# This function performs  CNOT operation on 4 qubits (Control qubit 3, Target qubit 0)
#
###########################################################################################
CNOT4_30 <- function(a){
    cnot4_30 = diag(16)
    cnot4_30[,c(2,10)] = cnot4_30[,c(10,2)]
    cnot4_30[,c(4,12)]=cnot4_30[,c(12,4)]
    cnot4_30[,c(6,14)]=cnot4_30[,c(14,6)]
    cnot4_30[,c(8,16)]=cnot4_30[,c(16,8)]
    result = cnot4_30 %*% a
    result
}
