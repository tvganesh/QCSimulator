##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_20
# This function performs  CNOT operation on 4 qubits (Control qubit 2, Target qubit 0)
#
###########################################################################################
CNOT4_20 <- function(a){
    cnot4_20 = TensorProd(CNOT3_20(diag(8)),diag(2))
    result = cnot4_20 %*% a
    result
}
