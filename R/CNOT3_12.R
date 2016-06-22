##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT3_12
# This function performs  CNOT operation on 3 qubits (Control qubit 1, Target qubit 2)
#
###########################################################################################
CNOT3_12 <- function(a){
    cnot3_12=TensorProd(diag(2), CNOT2_01(diag(4)))
    result = cnot3_12 %*% a
    result
}
