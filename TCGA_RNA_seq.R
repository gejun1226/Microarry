setwd("/Users/junge/Desktop/UPS/mass_data/UCEC_FBXW7/RNA_seq/")
path <- getwd()
dirs <- list.files(path = "gdc_117_samples")[-118]
# file_id
file_id <- read.table("gdc_sample_sheet.2019-09-04.tsv",sep = "\t",header = T,stringsAsFactors = F)
rownames(file_id) <- file_id[,1]
file_id <- file_id[,-1]
file_id <- file_id[dirs,]
files <- paste("gdc_117_samples",dirs,file_id$File.Name,sep = "/")
df <-  lapply(files,function(x) read.csv(file=x, sep = "\t",stringsAsFactors = F,header=T)) %>% bind_cols() 
