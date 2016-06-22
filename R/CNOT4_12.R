##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_12
# This function performs  CNOT operation on 4 qubits (Control qubit 1, Target qubit 2)
#
###########################################################################################
CNOT4_12 <- function(a){
    cnot4_12=TensorProd(CNOT3_12(diag(8)),diag(2))
    result = cnot4_12 %*% a
    result
}
