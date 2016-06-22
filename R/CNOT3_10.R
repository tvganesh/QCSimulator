##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT3_10
# This function performs  CNOT operation on 3 qubits (Control qubit 1, Target qubit 0)
#
###########################################################################################
CNOT3_10 <- function(a){
    cnot3_10=TensorProd(CNOT2_10(diag(4)),diag(2))
    result = cnot3_10 %*% a
    result
}
