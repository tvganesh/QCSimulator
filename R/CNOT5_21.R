##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_21
# This function performs  CNOT operation on 5 qubits (Control qubit 2, Target qubit 1)
#
###########################################################################################
CNOT5_21 <- function(a){
    cnot5_21=TensorProd(CNOT4_21(diag(16)),diag(2))
    result = cnot5_21 %*% a
    result
}
