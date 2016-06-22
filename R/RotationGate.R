##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: RotationGate
# This function applies the rotation gate on the input
#
###########################################################################################
RotationGate <- function(t, a){
    R= matrix(c(cos(t),sin(t),-sin(t),cos(t)),nrow=2,ncol=2)
    result <-R%*%a
    result

}
