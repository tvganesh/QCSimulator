##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_02
# This function performs  CNOT operation on 4 qubits (Control qubit 3, Target qubit 1)
#
###########################################################################################
CNOT4_02 <- function(a){
    cnot4_02 = TensorProd(CNOT3_02(diag(8)),diag(2))
    result = cnot4_02 %*% a
    result
}
