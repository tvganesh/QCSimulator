##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: S1Gate
# This function applies the S1 Gate on the input
#
###########################################################################################
S1Gate <- function(a){
    S1=matrix(c(1,0,0,-1i),nrow=2,ncol=2)
    result <-S1%*%a
    result

}
