##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: Toffoli
# This function applies a Toffoli gate
#
###########################################################################################
Toffoli <- function(q){
    X= matrix(c(0,1,1,0),nrow=2,ncol=2)
    H=1/sqrt(2) * matrix(c(1,1,1,-1),nrow=2,ncol=2)
    a = kronecker(X,I,"*")

    c = kronecker(a,I,"*")
    c

}
