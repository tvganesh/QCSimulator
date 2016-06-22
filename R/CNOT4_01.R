##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_01
# This function performs  CNOT operation on 4 qubits (Control qubit 0, Target qubit 1)
#
###########################################################################################
CNOT4_01 <- function(a){
    cnot4_01=TensorProd(CNOT3_01(diag(8)),diag(2))
    result = cnot4_01 %*% a
    result
}
