##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: SWAPQ0Q1
# This function simulates a quantum circuit that swaps Q0 and Q1
#
###########################################################################################
SWAPQ0Q1 <- function(a){
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    I=matrix(c(1,0,0,1),nrow=2,ncol=2)

    # 1st composite
    # H x I x I
    a = TensorProd(TensorProd(H,I),I)
    # 1st CNOT
    a1= CNOT3_02(a)

    # 2nd composite
    # H x I x H
    b= TensorProd(TensorProd(H,I),H)
    b1 = DotProduct(b,a1)
    # Apply CNOT
    b1 = CNOT3_02(b)

    #3rd composite
    # H x I x H
    c = TensorProd(TensorProd(H,I),H)
    c1 = DotProduct(c,b1)
    # Apply CNOT
    c4 = CNOT3_02(c3)

    # Apply CNOT
    d1 = CNOT3_12(c4)

    #4th composite
    # I x H x H
    e = TensorProd(TensorProd(I,H),H)

    e1 = DotProduct(e,d1)

    #Apply CNOT
    f1 = CNOT3_12(e1)


    #5th composite
    # I x H x H
    g = TensorProd(TensorProd(I,H),H)

    g1 = DotProduct(g,f1)

    #Apply CNOT
    h1 = CNOT3_12(g1)

    i1 = CNOT3_02(h1)

    # 6th composite
    # H x I x H
    j = TensorProd(TensorProd(H,I),H)
    k1 = DotProduct(j,i1)
    # Apply CNOT
    l1 = CNOT3_02(k1)

    # 7th composite
    # H x I x H
    m1 = TensorProd(TensorProd(H,I),H)
    n1 = DotProduct(m1,l1)
    # Apply CNOT
    o1 = CNOT3_02(n1)
    p1= measurement(o1)
    plotMeasurement(p1)


}
