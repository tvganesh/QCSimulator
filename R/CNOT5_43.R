##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_43
# This function performs  CNOT operation on 5 qubits (Control qubit 4, Target qubit 3)
#
###########################################################################################
CNOT5_43 <- function(a){
    cnot5_43=TensorProd(diag(2), CNOT4_32(diag(16)))
    result = cnot5_43 %*% a
    result
}
