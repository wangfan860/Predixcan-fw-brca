file_names <- dir() #where you have your files
your_data_frame <- do.call(cbind,lapply(file_names,read.csv))
write.csv(file_names,"44tissueNames.csv")
write.csv(your_data_frame,"tumor-pearson-result.csv")

tissue=read.csv("44tissueNames.csv")
tissue3=tissue[rep(seq_len(nrow(tissue)), each=3),]  ##triplicate all the value
write.csv(tissue3,"3Xall tissue type.csv")
