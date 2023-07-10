find_it<-function(clue_x, index_var, dep_var ) {
	
	if (base::missing(clue_x)) {
	    return(cat("  find_it('GM', df$car_brand, df$car_satprice) "))  }
	
	n<-length(dep_var)
	for(i in 1:n) {
	
	if( is.na(index_var[i])) { 
	next}
	
    if(clue_x == index_var[i]) { cat("  Looking for:",index_var[i], ", Index:",i, ", Value found:",  dep_var[i], '\n')}
    }}
	