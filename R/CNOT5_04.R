##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_04
# This function performs  CNOT operation on 5 qubits (Control qubit 0, Target qubit 4)
#
###########################################################################################

CNOT5_04 <- function(a){
    cnot5_04 = diag(32)
    cnot5_04[,c(17,18)] = cnot4_03[,c(18,17)]
    cnot5_04[,c(19,20)] = cnot4_03[,c(20,19)]
    cnot5_04[,c(21,22)] = cnot4_03[,c(22,21)]
    cnot5_04[,c(23,24)] = cnot4_03[,c(24,23)]
    cnot5_04[,c(25,26)] = cnot4_03[,c(26,25)]
    cnot5_04[,c(27,28)] = cnot4_03[,c(28,27)]
    cnot5_04[,c(29,30)] = cnot4_03[,c(30,29)]
    cnot5_04[,c(31,32)] = cnot4_03[,c(32,31)]
    result = cnot5_04 %*% a
    result

}
