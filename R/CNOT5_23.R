##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_23
# This function performs  CNOT operation on 5 qubits (Control qubit 2, Target qubit 3)
#
###########################################################################################
CNOT5_23 <- function(a){
    cnot5_23=TensorProd(CNOT4_23(diag(16)),diag(2))
    result = cnot5_21 %*% a
    result
}
