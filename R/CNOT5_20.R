##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_20
# This function performs  CNOT operation on 5 qubits (Control qubit 2, Target qubit 0)
#
###########################################################################################
CNOT5_20 <- function(a){
    cnot5_20=TensorProd(CNOT4_20(diag(16)),diag(2))
    result = cnot5_20 %*% a
    result
}
