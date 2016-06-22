##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: Initialization
# This function performs a dot product between 2 vectors
#
###########################################################################################
init <- function(){
    I2 = diag(2)
    I3= diag(3)
    I4 = diag(4)
    # 2 qubits
    q00_=matrix(c(1,0,0,0),nrow=4,ncol=1)
    q01_=matrix(c(0,1,0,0),nrow=4,ncol=1)
    q10_=matrix(c(0,0,1,0),nrow=4,ncol=1)
    q11_=matrix(c(0,0,0,1),nrow=4,ncol=1)

    # 3 qubits
    q000_=matrix(c(1,0,0,0,0,0,0,0),nrow=8,ncol=1)
    q001_=matrix(c(0,1,0,0,0,0,0,0),nrow=8,ncol=1)
    q010_=matrix(c(0,0,1,0,0,0,0,0),nrow=8,ncol=1)
    q011_=matrix(c(0,0,0,1,0,0,0,0),nrow=8,ncol=1)

    q100_=matrix(c(0,0,0,0,1,0,0,0),nrow=8,ncol=1)
    q101_=matrix(c(0,0,0,0,0,1,0,0),nrow=8,ncol=1)
    q110_=matrix(c(1,0,0,0,0,0,1,0),nrow=8,ncol=1)
    q111_=matrix(c(1,0,0,0,0,0,0,1),nrow=8,ncol=1)

}
