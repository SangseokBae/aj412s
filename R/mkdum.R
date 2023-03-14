mkdum<-function(dums){

xdata<-as.vector(dums)
x<-xdata[!is.na(xdata)]
x<-sort(unique(x))
mcol<-length(x)
mrow<-length(dums)
dm<-matrix(NA, mrow, mcol)
for( k in 1:mcol){
for(i in 1:mrow){
ifelse( dums[i]==k , dm[i,k]<-1 , dm[i,k]<-0 )
} }
return(as.data.frame(dm))
}

