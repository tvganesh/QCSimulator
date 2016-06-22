##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CPauliX
# This function computes  a controlled Pauli X gate
#
###########################################################################################
CPauliX <- function(q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)
    # Compute 1st composite
    a = TensorProd(I,I)
    b = CNOT2_01(a)
    # Compute 1st composite
    c = TensorProd(I,I)
    #Take dot product
    d = DotProduct(c,b)
    #Take dot product with qubit
    e = DotProduct(d,q)
    e
}
