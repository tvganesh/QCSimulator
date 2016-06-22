##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: innerProduct
# This function performs the inner product between 2 vectors
#
###########################################################################################
innerProduct <- function(a,b){
    a1= Conj(a)
    result = t(a1) %*% b
    t = pi/acos(result)
    theta = 180/t
    theta
}
