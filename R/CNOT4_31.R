##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_31
# This function performs  CNOT operation on 4 qubits (Control qubit 3, Target qubit 1)
#
###########################################################################################
CNOT4_31 <- function(a){
    cnot4_31=TensorProd(diag(2), CNOT3_20(diag(8)))
    result = cnot4_31 %*% a
    result
}
