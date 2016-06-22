##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: GateDagger
# This function computes  the dagger function (transpose of conjugate) of a
# unitary matrix
#
###########################################################################################
GateDagger <- function(a){
    aConj = Conj(a)
    gateDagger <- t(aConj)
    gateDagger
}
