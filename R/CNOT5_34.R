##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_34
# This function performs  CNOT operation on 5 qubits (Control qubit 3, Target qubit 4)
#
###########################################################################################
CNOT5_34 <- function(a){
    cnot5_34=TensorProd(diag(2), CNOT4_23(diag(16)))
    result = cnot5_34 %*% a
    result
}
