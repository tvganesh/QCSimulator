##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT3_21
# This function performs  CNOT operation on 3 qubits (Control qubit 2, Target qubit 1)
#
###########################################################################################
CNOT3_21 <- function(a){
    cnot3_21=TensorProd(diag(2), CNOT2_10(diag(4)))
    result = cnot3_21 %*% a
    result
}
