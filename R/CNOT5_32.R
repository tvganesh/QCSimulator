##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_32
# This function performs  CNOT operation on 5 qubits (Control qubit 3, Target qubit 3)
#
###########################################################################################
CNOT5_32 <- function(a){
    cnot5_32=TensorProd(CNOT4_32(diag(16)),diag(2))
    result = cnot5_32 %*% a
    result
}
