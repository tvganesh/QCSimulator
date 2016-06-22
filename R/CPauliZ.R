##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CPauliZ
# This function computes  a controlled Pauli Z gate
#
###########################################################################################
CPauliZ <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)

    # Compute 1st composite
    a = TensorProd(I, Hadamard(I))

    # Apply CNOT
    b = CNOT2_01(a)

    # Compute 2nd composite
    c = TensorProd(I, Hadamard(I))

    # Compute result
    d = DotProduct(c,b)

    e = DotProduct(d,q)

    e
}
