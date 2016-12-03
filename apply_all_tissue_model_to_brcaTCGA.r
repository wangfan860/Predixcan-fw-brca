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

Brain_Hippocampus_model_all=read.table("Brain_Hypothalamus-predicted_expression.txt",header=T)    ####o
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Brain_Hypothalamus-model.csv")

Brain_Hippocampus_model_all=read.table("Artery_Aorta-predicted_expression.txt",header=T)    ####p
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Artery_Aorta-model.csv")

Brain_Hippocampus_model_all=read.table("Heart_Atrial_Appendage-predicted_expression.txt",header=T)    ####q
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Heart_Atrial_Appendage-model.csv")

Brain_Hippocampus_model_all=read.table("Skin_Sun_Exposed_Lower_leg-predicted_expression.txt",header=T)    ####r
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Skin_Sun_Exposed_Lower_leg-model.csv")

Brain_Hippocampus_model_all=read.table("Brain_Nucleus_accumbens_basal_ganglia-predicted_expression.txt",header=T)    ####s
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Brain_Nucleus_accumbens_basal_ganglia-model.csv")

Brain_Hippocampus_model_all=read.table("Small_Intestine_Terminal_Ileum-predicted_expression.txt",header=T)    ####t
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Small_Intestine_Terminal_Ileum-model.csv")

Brain_Hippocampus_model_all=read.table("Heart_Left_Ventricle-predicted_expression.txt",header=T)    ####u
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Heart_Left_Ventricle-model.csv")

Brain_Hippocampus_model_all=read.table("Artery_Coronary-predicted_expression.txt",header=T)    ####v
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Artery_Coronary-model.csv")

Brain_Hippocampus_model_all=read.table("Brain_Putamen_basal_ganglia-predicted_expression.txt",header=T)    ####w
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Brain_Putamen_basal_ganglia-model.csv")

Brain_Hippocampus_model_all=read.table("Spleen-predicted_expression.txt",header=T)    ####x
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Spleen-model.csv")

Brain_Hippocampus_model_all=read.table("Liver-predicted_expression.txt",header=T)    ####y
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Liver-model.csv")

Brain_Hippocampus_model_all=read.table("Artery_Tibial-predicted_expression.txt",header=T)    ####z
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Artery_Tibial-model.csv")

Brain_Hippocampus_model_all=read.table("Artery_Coronary-predicted_expression.txt",header=T)    ####aa
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Artery_Coronary-model.csv")

Brain_Hippocampus_model_all=read.table("Artery_Coronary-predicted_expression.txt",header=T)    ####bb
rownames(Brain_Hippocampus_model_all)=Brain_Hippocampus_model_all[,2]
Brain_Hippocampus_Table=merge(brca_patient, Brain_Hippocampus_model_all, by="row.names")
write.csv(Brain_Hippocampus_Table,"breastPatient_Artery_Coronary-model.csv")

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


Brain_Hippocampus=read.csv("breastPatient_Brain_Hippocampus-model.csv", header=T) ##k
Muscularis=read.csv("breastPatient_Esophagus_Muscularis-model.csv", header=T) ##l
Adrenal_Gland=read.csv("breastPatient_Adrenal_Gland-model.csv", header=T) ##m
Skin_Not_Sun=read.csv("breastPatient_Skin_Not_Sun_Exposed_Suprapubic-model.csv", header=T) ##n
Brain_Hypothalamus=read.csv("breastPatient_Brain_Hypothalamus-model.csv", header=T) ##o
Artery_Aorta=read.csv("breastPatient_Artery_Aorta-model.csv", header=T) ##p
Heart_Atrial=read.csv("breastPatient_Heart_Atrial_Appendage-model.csv", header=T) ##q
Skin_Sun_Exposed=read.csv("breastPatient_Skin_Sun_Exposed_Lower_leg-model.csv", header=T) ##r
a=colnames(Brain_Hippocampus)
b=colnames(Muscularis)
c=colnames(Adrenal_Gland)
d=colnames(Skin_Not_Sun)
e=colnames(Brain_Hypothalamus)
f=colnames(Artery_Aorta)
g=colnames(Heart_Atrial)
h=colnames(Skin_Sun_Exposed)
vector3=Reduce(intersect, list(a,b,c,d,e,f,g,h))
write.csv(vector3,"vector3.csv")


Brain_Nucleus=read.csv("breastPatient_Brain_Nucleus_accumbens_basal_ganglia-model.csv", header=T) ##s
Small_Intestine=read.csv("breastPatient_Small_Intestine_Terminal_Ileum-model.csv", header=T) ##t
Heart_Left_Ventricle=read.csv("breastPatient_Heart_Left_Ventricle-model.csv", header=T) ##u
Artery_Coronary=read.csv("breastPatient_Artery_Coronary-model.csv", header=T) ##v
Brain_Putamen=read.csv("breastPatient_Brain_Putamen_basal_ganglia-model.csv", header=T) ##w
Spleen=read.csv("breastPatient_Spleen-model.csv", header=T) ##x
Liver=read.csv("breastPatient_Liver-model.csv", header=T) ##y
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##z
a=colnames(Brain_Nucleus)
b=colnames(Small_Intestine)
c=colnames(Heart_Left_Ventricle)
d=colnames(Artery_Coronary)
e=colnames(Brain_Putamen)
f=colnames(Spleen)
g=colnames(Liver)
h=colnames(Artery_Tibial)
vector4=Reduce(intersect, list(a,b,c,d,e,f,g,h))
write.csv(vector4,"vector4.csv")


Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##aa
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##bb
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##cc
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##dd
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##ee
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##ff
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##gg
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##hh
a=colnames()
b=colnames()
c=colnames()
d=colnames()
e=colnames()
f=colnames()
g=colnames()
h=colnames()
vector5=Reduce(intersect, list(a,b,c,d,e,f,g,h))
write.csv(vector5,"vector5.csv")


Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##ii
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##jj
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##kk
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##ll
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##mm
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##nn
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##oo
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##pp
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##qq
Artery_Tibial=read.csv("breastPatient_Artery_Tibial-model.csv", header=T) ##rr
a=colnames()
b=colnames()
c=colnames()
d=colnames()
e=colnames()
f=colnames()
g=colnames()
h=colnames()
i=colnames()
j=colnames()
vector6=Reduce(intersect, list(a,b,c,d,e,f,g,h))
write.csv(vector6,"vector6.csv")


vector1=read.csv("vector1.csv")
vector2=read.csv("vector2.csv")
vector3=read.csv("vector3.csv")
vector4=read.csv("vector4.csv")
vector5=read.csv("vector5.csv")
vector6=read.csv("vector6.csv")

vector=Reduce(intersect, list(vector1[,2],vector2[,2],vector3[,2],vector4[,2],vector5[,2],vector6[,2]))

breast=read.csv("breastPatient_brest model.csv",header=T)  ##a
breast_table=rbind(vector,subset(breast, select = vector))

lung=read.csv("breastPatient_lung model.csv", header=T)    ##b
lung_table=rbind(vector,subset(lung, select = vector))

gastro=read.csv("breastPatient_Gastro model.csv", header=T)  ##c
gastro_table=rbind(vector,subset(gastro, select = vector))

Adipose=read.csv("breastPatient_Adipose model.csv", header=T)  ##d


