mkdate_merge<-function(df, ydata, mdata ){

if (base::missing(df)) {
	    cat("  Input: Year=2023 and Month=4 // Output: DATE_merge=2023-04-01    ", '\n')
		return(cat("  df<-mkdate_merge(df, 2=number of year column, 3=number of month column) ") )  }

df<-as.data.frame(df)
df[ ,ydata]<-as.character(df[ ,ydata])
df[ ,mdata]<-as.character(df[ ,mdata])

n<-nrow(df)

for (i in 1:n){
if(nchar(df[,mdata][i])==1) {
df[,mdata][i]<-paste0('0', df[,mdata][i], sep='')
} }

df$DATE_merge<-rep(NA, n)

for (i in 1:n){
df$DATE_merge[i]<-paste0( df[,ydata][i], '-',df[,mdata][i], '-01', sep='')
}

df$DATE_merge<-as.Date(df$DATE_merge)

return(df)

}
