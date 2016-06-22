##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_10
# This function performs  CNOT operation on 5 qubits (Control qubit 1, Target qubit 0)
#
###########################################################################################
CNOT5_10 <- function(a){
    cnot5_10=TensorProd(CNOT4_10(diag(16)),diag(2))
    result = cnot5_10 %*% a
    result
}
