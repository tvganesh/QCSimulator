##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_42
# This function performs  CNOT operation on 5 qubits (Control qubit 4, Target qubit 2)
#
###########################################################################################
CNOT5_42 <- function(a){
    cnot5_42=TensorProd(diag(2), CNOT4_31(diag(16)))
    result = cnot5_42 %*% a
    result
}
