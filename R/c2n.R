# 문자열을 numeric으로  
c2n <- function(x){   
     groups = unique(x)   
     as.numeric(factor(x, levels=groups)) }   
