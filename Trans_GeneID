library(biomaRt)
listMarts()
ensembl <- useMart("ensembl")
ensembl = useMart("ensembl",dataset = "mmusculus_gene_ensembl")
filters = listFilters(ensembl)
with_affy_mogene_1_0_st_v1
affyids=c("A_19_P00315528")
getBM(attributes=c('with_affy_mogene_1_0_st_v1', 'hgnc_symbol'), 
      filters = 'with_affy_mogene_1_0_st_v1', 
      values = affyids, 
      mart = ensembl)
