file_names <- dir() #where you have your files

your_data_frame <- do.call(rbind,lapply(file_names,read.csv))
