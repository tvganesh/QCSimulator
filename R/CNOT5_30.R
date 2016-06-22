##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_30
# This function performs  CNOT operation on 5 qubits (Control qubit 3, Target qubit 0)
#
###########################################################################################
CNOT5_30 <- function(a){
    cnot5_30=TensorProd(CNOT4_30(diag(16)),diag(2))
    result = cnot5_30 %*% a
    result
}
