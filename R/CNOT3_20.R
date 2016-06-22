##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 22 Jun 2016
# Function: CNOT3_02
# This function performs  CNOT operation on 3 qubits (Control qubit 2, Target qubit 0)
#
###########################################################################################
CNOT3_20 <- function(a){
    cnot3_20=matrix(c(1,0,0,0,0,0,0,0,
                      0,0,0,0,0,1,0,0,
                      0,0,1,0,0,0,0,0,
                      0,0,0,0,0,0,0,1,
                      0,0,0,0,1,0,0,0,
                      0,1,0,0,0,0,0,0,
                      0,0,0,0,0,0,1,0,
                      0,0,0,1,0,0,0,0),nrow=8,ncol=8)


    result = cnot3_20 %*% a
    result
}
