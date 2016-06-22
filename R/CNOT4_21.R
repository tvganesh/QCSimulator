##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT4_21
# This function performs  CNOT operation on 4 qubits (Control qubit 2, Target qubit 1)
#
###########################################################################################
CNOT4_21 <- function(a){
    cnot4_21=TensorProd(CNOT3_21(diag(8)),diag(2))
    result = cnot4_21 %*% a
    result
}
