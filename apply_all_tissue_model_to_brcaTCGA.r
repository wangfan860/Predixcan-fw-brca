breast=read.table("tcga_3615_brca_gtex_model_predicted_expression.txt",header=T)
lung=read.table("tcga_3615_lung_gtex_model_predicted_expression.txt", header=T)


a=colnames(breast)
b=colnames(lung)

vector=Reduce(intersect, list(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb,cc,dd,ee,ff,gg))

breast_table=rbind(vector,subset(breast, select = vector))
lung_table=rbind(vector,subset(lung, select = vector))
