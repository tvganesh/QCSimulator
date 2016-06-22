##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_12
# This function performs  CNOT operation on 5 qubits (Control qubit 1, Target qubit 2)
#
###########################################################################################
CNOT5_12 <- function(a){
    cnot5_12=TensorProd(CNOT4_12(diag(16)),diag(2))
    result = cnot5_12 %*% a
    result
}
