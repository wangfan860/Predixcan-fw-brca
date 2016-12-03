brca_patient=read.csv("BRCA patient.csv",header=T)
rownames(brca_patient)=brca_patient[,1]

breast_model_all=read.table("tcga_3615_brca_gtex_1kg_model_predicted_expression.txt",header=T)  ####a
rownames(breast_model_all)=breast_model_all[,2]
breast_Table=merge(brca_patient, breast_model_all, by="row.names")
write.csv(breast_Table,"breastPatient_brest model.csv")

lung_model_all=read.table("tcga_3615_lung_gtex_1kg_modelpredicted_expression.txt",header=T)   ####b
rownames(lung_model_all)=lung_model_all[,2]
lung_Table=merge(brca_patient, lung_model_all, by="row.names")
write.csv(lung_Table,"breastPatient_lung model.csv")

Gastro_model_all=read.table("Esophagus_Gastroesophageal_Junction-predicted_expression.txt",header=T)    ####c
rownames(Gastro_model_all)=Gastro_model_all[,2]
Gastro_Table=merge(brca_patient, Gastro_model_all, by="row.names")
write.csv(Gastro_Table,"breastPatient_Gastro model.csv")

Adipose_model_all=read.table("Adipose_Subcutaneous-predicted_expression.txt",header=T)    ####d
rownames(Adipose_model_all)=Adipose_model_all[,2]
Adipose_Table=merge(brca_patient, Adipose_model_all, by="row.names")
write.csv(Adipose_Table,"breastPatient_Adipose model.csv")

Brain_Cortex_model_all=read.table("Brain_Cortex-predicted_expression.txt",header=T)    ####e
rownames(Brain_Cortex_model_all)=Brain_Cortex_model_all[,2]
Brain_Cortex_Table=merge(brca_patient, Brain_Cortex_model_all, by="row.names")
write.csv(Brain_Cortex_Table,"breastPatient_Brain_Cortex model.csv")

Pituitary_model_all=read.table("Pituitary-predicted_expression.txt",header=T)    ####f
rownames(Pituitary_model_all)=Pituitary_model_all[,2]
Pituitary_Table=merge(brca_patient, Pituitary_model_all, by="row.names")
write.csv(Pituitary_Table,"breastPatient_Pituitary model.csv")

Mucosa_model_all=read.table("Esophagus_Mucosa-predicted_expression.txt",header=T)    ####g
rownames(Mucosa_model_all)=Mucosa_model_all[,2]
Mucosa_Table=merge(brca_patient, Mucosa_model_all, by="row.names")
write.csv(Mucosa_Table,"breastPatient_Esophagus_Mucosa model.csv")

Brain_Frontal_model_all=read.table("Brain_Frontal_Cortex_BA9-predicted_expression.txt",header=T)    ####h
rownames(Brain_Frontal_model_all)=Brain_Frontal_model_all[,2]
Brain_Frontal_Table=merge(brca_patient, Brain_Frontal_model_all, by="row.names")
write.csv(Brain_Frontal_Table,"breastPatient_Brain_Frontal_Cortex_BA9-model.csv")

Adipose_Visceral_model_all=read.table("Adipose_Visceral_Omentum-predicted_expression.txt",header=T)    ####i
rownames(Adipose_Visceral_model_all)=Adipose_Visceral_model_all[,2]
Adipose_Visceral_Table=merge(brca_patient, Adipose_Visceral_model_all, by="row.names")
write.csv(Adipose_Visceral_Table,"breastPatient_Adipose_Visceral_Omentum-model.csv")

Prostate_model_all=read.table("Prostate-predicted_expression.txt",header=T)    ####j
rownames(Prostate_model_all)=Prostate_model_all[,2]
Prostate_Table=merge(brca_patient, Prostate_model_all, by="row.names")
write.csv(Prostate_Table,"breastPatient_Prostate-model.csv")

Brain_Hippocampus_model_all=read.table("Brain_Hippocampus-predicted_expression.txt",header=T)    ####k
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Brain_Hippocampus-model.csv")

Brain_Hippocampus_model_all=read.table("Brain_Hippocampus-predicted_expression.txt",header=T)    ####k
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Brain_Hippocampus-model.csv")

Brain_Hippocampus_model_all=read.table("Esophagus_Muscularis-predicted_expression.txt",header=T)    ####l
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Esophagus_Muscularis-model.csv")

Brain_Hippocampus_model_all=read.table("Adrenal_Gland-predicted_expression.txt",header=T)    ####m
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Adrenal_Gland-model.csv")

Brain_Hippocampus_model_all=read.table("Skin_Not_Sun_Exposed_Suprapubic-predicted_expression.txt",header=T)    ####n
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Skin_Not_Sun_Exposed_Suprapubic-model.csv")



breast=read.csv("breastPatient_brest model.csv",header=T)  ##a
lung=read.csv("breastPatient_lung model.csv", header=T)    ##b
gastro=read.csv("breastPatient_Gastro model.csv", header=T)  ##c
Adipose=read.csv("breastPatient_Adipose model.csv", header=T)  ##d
a=colnames(breast)
b=colnames(lung)
c=colnames(gastro)
d=colnames(Adipose)
vector1=Reduce(intersect, list(a,b,c,d))
write.csv(vector1,"vector1.csv")

Brain_Cortex=read.csv("breastPatient_Brain_Cortex model.csv", header=T)  ##e
Pituitary=read.csv("breastPatient_Pituitary model.csv", header=T)  ##f
Mucosa=read.csv("breastPatient_Esophagus_Mucosa model.csv", header=T)  #g
Brain_Frontal=read.csv("breastPatient_Brain_Frontal_Cortex_BA9-model.csv", header=T) ##h
Adipose_Visceral=read.csv("breastPatient_Adipose_Visceral_Omentum-model.csv", header=T) ##i
prostate=read.csv("breastPatient_Prostate-model.csv", header=T) ##j
a=colnames(Brain_Cortex)
b=colnames(Pituitary)
c=colnames(Mucosa)
d=colnames(Brain_Frontal)
e=colnames(Adipose_Visceral)
f=colnames(prostate)
vector2=Reduce(intersect, list(a,b,c,d,e,f))
write.csv(vector2,"vector2.csv")


vector3=Reduce(intersect, list(i,j,k,l,m))
vector4=Reduce(intersect, list(n,o,p,q))
vector5=Reduce(intersect, list(r,s,t,u))
vector6=Reduce(intersect, list(v,w,x,y))
vector7=Reduce(intersect, list(z,aa,bb,cc))
vector8=Reduce(intersect, list(dd,ee,ff,gg))

vector=Reduce(intersect, list(vector1,vector2,vector3,))

breast_table=rbind(vector,subset(breast, select = vector))
lung_table=rbind(vector,subset(lung, select = vector))
