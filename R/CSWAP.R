##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CSWAP
# This function computes  a controlled swap of qubits
#
###########################################################################################
CSWAP <- function(a){
    result =CNOT2_01(CNOT2_10(CNOT2_01(a)))
    result
}
