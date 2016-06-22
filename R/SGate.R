##########################################################################################
# Designed and developed by Tinniam V Ganesh
# Date : 20 Jun 2016
# Function: SGate
# This function applies the S Gate on the input
#
###########################################################################################
SGate <- function(a){
    S=matrix(c(1,0,0,1i),nrow=2,ncol=2)
    result <-S%*%a
    result

}
