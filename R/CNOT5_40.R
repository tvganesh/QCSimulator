##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT5_40
# This function performs  CNOT operation on 5 qubits (Control qubit 4, Target qubit 0)
#
###########################################################################################

CNOT5_40 <- function(a){

    cnot5_40 = diag(32)
    cnot5_40[,c(2,18)] = cnot4_03[,c(18,2)]
    cnot5_40[,c(4,20)] = cnot4_03[,c(20,4)]
    cnot5_40[,c(6,22)] = cnot4_03[,c(22,6)]
    cnot5_40[,c(8,24)] = cnot4_03[,c(24,8)]
    cnot5_40[,c(10,26)] = cnot4_03[,c(26,10)]
    cnot5_40[,c(12,28)] = cnot4_03[,c(28,12)]
    cnot5_40[,c(14,30)] = cnot4_03[,c(30,14)]
    cnot5_40[,c(16,32)] = cnot4_03[,c(32,16)]
    result = cnot5_40 %*% a
    result

}
