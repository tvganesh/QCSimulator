##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_02
# This function performs  CNOT operation on 5 qubits (Control qubit 0, Target qubit 2)
#
###########################################################################################
CNOT5_02 <- function(a){
    cnot5_02=TensorProd(CNOT4_02(diag(16)),diag(2))
    result = cnot5_02 %*% a
    result
}
