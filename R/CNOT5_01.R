##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_01
# This function performs  CNOT operation on 5 qubits (Control qubit 0, Target qubit 1)
#
###########################################################################################
CNOT5_01 <- function(a){
    cnot5_01=TensorProd(CNOT4_01(diag(16)),diag(2))
    result = cnot5_01 %*% a
    result
}
