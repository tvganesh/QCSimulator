##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: T1Gate
# This function applies a T1 gate
#
###########################################################################################
T1Gate <- function(a){
    T1=matrix(c(1,0,0,exp(-1i*pi/4)),nrow=2,ncol=2)
    result <-T1%*%a
    result

}
