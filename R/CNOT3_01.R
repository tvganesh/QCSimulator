##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT3_01
# This function performs  CNOT operation on 3 qubits (Control qubit 0, Target qubit 2)
#
###########################################################################################
CNOT3_01 <- function(a){
    cnot3_01=TensorProd(CNOT2_01(diag(4)),diag(2))
    result = cnot3_01 %*% a
    result
}
