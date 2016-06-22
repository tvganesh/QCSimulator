##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_24
# This function performs  CNOT operation on 5 qubits (Control qubit 2, Target qubit 4)
#
###########################################################################################
CNOT5_24 <- function(a){
    cnot5_24=TensorProd(diag(2), CNOT4_13(diag(16)))
    result = cnot5_24 %*% a
    result
}
