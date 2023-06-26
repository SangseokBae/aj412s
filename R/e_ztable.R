#  How to use moonbook
e_ztable<-function(explaining=0){
if(explaining==0) {
cat(" ", '\n')
cat("library(moonBook); library(ztable) ", '\n')
cat("options(ztable.type='viewer')  ", '\n')
cat("colnames(Adata)<-c('brand','conv','satprice','age','gender')  ", '\n')
cat(" ## 회귀분석결과를 테이블로 만들기 ", '\n')
cat("re<-lm(satprice~gender+conv, data=Adata) ", '\n')
cat("ztable (re, caption='Table 13', caption.position='l', zebra=1)  ", '\n')
cat(" ", '\n')
cat(" ## 범주형 데이터에 대한 기술 ", '\n')
cat("mytable(~conv+satprice, data=Adata) ", '\n')
cat("mytable(brand~edu+age, data=Adata, max.ylev=4) ", '\n')
cat("  ", '\n')
cat("# max.ylev는 더미변수가 최대 몇개의 숫자로 코딩되었는지 지정  ", '\n')
cat("# max.ylev에서 지정한 숫자를 넘어서 코딩된 변수는 연속형변수로 인식  ", '\n')
cat("  ", '\n')
}}
