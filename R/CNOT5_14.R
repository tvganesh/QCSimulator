##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_14
# This function performs  CNOT operation on 5 qubits (Control qubit 1, Target qubit 4)
#
###########################################################################################
CNOT5_14 <- function(a){
    cnot5_14=TensorProd(diag(2), CNOT4_03(diag(16)))
    result = cnot5_14 %*% a
    result
}
