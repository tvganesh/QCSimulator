##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: TGate
# This function applies a T gate
#
###########################################################################################
TGate <- function(a){
    T=matrix(c(1,0,0,exp(1i*pi/4)),nrow=2,ncol=2)
    result <-T%*%a
    result

}
