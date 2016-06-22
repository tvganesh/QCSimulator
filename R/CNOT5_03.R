##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_03
# This function performs  CNOT operation on 5 qubits (Control qubit 0, Target qubit 3)
#
###########################################################################################
CNOT5_03 <- function(a){
    cnot5_03=TensorProd(CNOT4_03(diag(16)),diag(2))
    result = cnot5_03 %*% a
    result
}
