##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_13
# This function performs  CNOT operation on 5 qubits (Control qubit 1, Target qubit 3)
#
###########################################################################################
CNOT5_13 <- function(a){
    cnot5_13=TensorProd(CNOT4_13(diag(16)),diag(2))
    result = cnot5_13 %*% a
    result
}
