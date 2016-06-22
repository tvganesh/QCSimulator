##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_31
# This function performs  CNOT operation on 5 qubits (Control qubit 3, Target qubit 1)
#
###########################################################################################
CNOT5_31 <- function(a){
    cnot5_31=TensorProd(CNOT4_31(diag(16)),diag(2))
    result = cnot5_31 %*% a
    result
}
