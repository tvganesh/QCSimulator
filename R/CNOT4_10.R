##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_10
# This function performs  CNOT operation on 4 qubits (Control qubit 1, Target qubit 0)
#
###########################################################################################
CNOT4_10 <- function(a){
    cnot4_10=TensorProd(CNOT3_10(diag(8)),diag(2))
    result = cnot4_10 %*% a
    result
}
