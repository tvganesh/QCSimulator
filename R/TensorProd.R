##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: T1Gate
# This function performs a Tensor Product between the 2 vectors
#
###########################################################################################
TensorProd <- function(a,b){
    result=kronecker(a,b, "*")
    result

}
