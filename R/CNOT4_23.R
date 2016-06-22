##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_23
# This function performs  CNOT operation on 4 qubits (Control qubit 2, Target qubit 3)
#
###########################################################################################
CNOT4_23 <- function(a){
    cnot4_23 = TensorProd(diag(2), CNOT3_12(diag(8)))
    result = cnot4_23 %*% a
    result
}
