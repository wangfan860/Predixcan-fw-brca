brca_patient=read.csv("BRCA patient.csv",header=T)
rownames(brca_patient)=brca_patient[,1]

breast_model_all=read.table("tcga_3615_brca_gtex_1kg_model_predicted_expression.txt",header=T)  ####a
rownames(breast_model_all)=breast_model_all[,2]
breast_Table=merge(brca_patient, breast_model_all, by="row.names")
write.csv(breast_Table,"breastPatient_brest model.csv")

lung_model_all=read.table("tcga_3615_lung_gtex_1kg_modelpredicted_expression.txt",header=T)   ####b
rownames(lung_model_all)=lung_model_all[,2]
lung_Table=merge(brca_patient, lung_model_all, by="row.names")
write.csv(breast_Table,"breastPatient_lung model.csv")

Gastro_model_all=read.table("Esophagus_Gastroesophageal_Junction-predicted_expression.txt",header=T)    ####c
rownames(Gastro_model_all)=Gastro_model_all[,2]
Gastro_Table=merge(brca_patient, Gastro_model_all, by="row.names")
write.csv(breast_Table,"breastPatient_Gastro model.csv")


breast=read.table("breastPatient_brest model.txt",header=T)
lung=read.table("tcga_3615_lung_gtex_model_predicted_expression.txt", header=T)


a=colnames(breast)
b=colnames(lung)

vector=Reduce(intersect, list(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb,cc,dd,ee,ff,gg))

breast_table=rbind(vector,subset(breast, select = vector))
lung_table=rbind(vector,subset(lung, select = vector))
