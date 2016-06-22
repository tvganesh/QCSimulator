##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_41
# This function performs  CNOT operation on 5 qubits (Control qubit 4, Target qubit 1)
#
###########################################################################################
CNOT5_41 <- function(a){
    cnot5_41=TensorProd(diag(2), CNOT4_30(diag(16)))
    result = cnot5_41 %*% a
    result
}
