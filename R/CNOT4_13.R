##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_13
# This function performs  CNOT operation on 4 qubits (Control qubit 1, Target qubit 3)
#
###########################################################################################
CNOT4_13 <- function(a){
    cnot4_13=TensorProd(diag(2), CNOT3_02(diag(8)))
    result = cnot4_13 %*% a
    result
}
