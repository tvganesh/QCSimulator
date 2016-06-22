##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_23
# This function performs  CNOT operation on 4 qubits (Control qubit 2, Target qubit 3)
#
###########################################################################################
CNOT4_32 <- function(a){
    cnot4_32 = TensorProd(diag(2), CNOT3_21(diag(8)))
    result = cnot4_32 %*% a
    result
}
