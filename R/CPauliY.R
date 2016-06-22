##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CPauliY
# This function computes  a controlled Pauli Y gate
#
###########################################################################################
CPauliY <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # Compute 1st composite
    a = TensorProd(I, S1Gate(I))

    # Apply CNOT
    b = CNOT2_01(a)

    # Compute 2nd composite
    c = TensorProd(I, SGate(I))

    # Compute result
    d = DotProduct(c,b)

    e = DotProduct(d,q)
    e
}
