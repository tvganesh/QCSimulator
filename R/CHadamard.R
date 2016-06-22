##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: CHadamard
# This function computes  a controlled Hadamard Gate
#
###########################################################################################
CHadamard <- function (q){
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # Compute 1st chain
    a = SGate(Hadamard(I))

    # Compute 2nd chain
    b = S1Gate(Hadamard(I))

    #Compute 1st composite
    c = kronecker(a,b,"*")

    # Apply CNOT
    d = CNOT(c)
    d1 = d %*% q ############# To do - Remove q

    # Compute 3rd chain
    e = TGate(Hadamard(I))

    # Compute 2nd composite
    f1 = kronecker(I,e,"*")

    # Apply CNOT
    f2 = CNOT(f1)

    # Compute the result of 2nd composite
    g1 = f2 %*% d1


    # Compute 3rd gate chain
    i=PauliX(SGate(Hadamard(TGate(I))))
    j = kronecker(I,i,"*")
    k = j %*% g1

}
