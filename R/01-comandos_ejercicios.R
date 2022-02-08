# Clase 01/02/2022


# Clase 02/02/2022
## ----first_rse------------------------------------------------------------------------------------------------------
## Lets build our first SummarizedExperiment object
library("SummarizedExperiment")
## ?SummarizedExperiment

## De los ejemplos en la ayuda oficial

## Creamos los datos para nuestro objeto de tipo SummarizedExperiment
## para 200 genes a lo largo de 6 muestras
nrows <- 200
ncols <- 6
## Números al azar de cuentas
set.seed(20210223)
counts <- matrix(runif(nrows * ncols, 1, 1e4), nrows)
## Información de nuestros genes
rowRanges <- GRanges(
  rep(c("chr1", "chr2"), c(50, 150)),
  IRanges(floor(runif(200, 1e5, 1e6)), width = 100),
  strand = sample(c("+", "-"), 200, TRUE),
  feature_id = sprintf("ID%03d", 1:200)
)
names(rowRanges) <- paste0("gene_", seq_len(length(rowRanges)))
## Información de nuestras muestras
colData <- DataFrame(
  Treatment = rep(c("ChIP", "Input"), 3),
  row.names = LETTERS[1:6]
)
## Juntamos ahora toda la información en un solo objeto de R
rse <- SummarizedExperiment(
  assays = SimpleList(counts = counts),
  rowRanges = rowRanges,
  colData = colData
)

## Exploremos el objeto resultante
rse

## Número de genes y muestras
dim(rse)

## IDs de nuestros genes y muestras
dimnames(rse)

## Nombres de tablas de cuentas que tenemos (RPKM, CPM, counts, logcounts, etc)
assayNames(rse)

## El inicio de nuestra tabla de cuentas
head(assay(rse))

## Información de los genes en un objeto de Bioconductor
rowRanges(rse)

## Tabla con información de los genes
rowData(rse) # es idéntico a 'mcols(rowRanges(rse))'

## Tabla con información de las muestras
colData(rse)


## ----rse_exercise---------------------------------------------------------------------------------------------------
## Comando 1
rse[1:2, ]
## Comando 2
rse[, c("A", "D", "F")]


## ----isee_basic, eval = FALSE---------------------------------------------------------------------------------------
## ## Explora el objeto rse de forma interactiva
## library("iSEE")
## iSEE::iSEE(rse)


## ----download_sce_layer---------------------------------------------------------------------------------------------
## Descarguemos unos datos de spatialLIBD
sce_layer <- spatialLIBD::fetch_data("sce_layer")
sce_layer

## Revisemos el tamaño de este objeto
pryr::object_size(sce_layer)


## ----explore_sce_layer, eval = FALSE--------------------------------------------------------------------------------
iSEE::iSEE(sce_layer)



## Load recount3 R package
library("recount3")

## Revisemos todos los proyectos con datos de humano en recount3
human_projects <- available_projects()

## 2022-02-02 00:02:30 caching file sra.recount_project.MD.gz.

## Encuentra tu proyecto de interés. Aquí usaremos
## SRP009615 de ejemplo
proj_info <- subset(
  human_projects,
  project == "SRP009615" & project_type == "data_sources"
)
## Crea un objetio de tipo RangedSummarizedExperiment (RSE)
## con la información a nivel de genes
rse_gene_SRP009615 <- create_rse(proj_info)

assay(rse_gene_SRP009615, "counts") <- compute_read_counts(rse_gene_SRP009615)


## ----"expand_attributes"--------------------------------------------------------------------------------------------
## Para este estudio en específico, hagamos más fácil de usar la
## información del experimento
rse_gene_SRP009615 <- expand_sra_attributes(rse_gene_SRP009615)
colData(rse_gene_SRP009615)[
  ,
  grepl("^sra_attribute", colnames(colData(rse_gene_SRP009615)))
]


# Clase 03/02/2022
library("SummarizedExperiment")
library("ExploreModelMatrix")
(sampleData <- data.frame(
  Response = rep(c("Resistant", "Sensitive"), c(12, 18)),
  Patient = factor(rep(c(1:6, 8, 11:18), each = 2)),
  Treatment = factor(rep(c("pre","post"), 15)),
  ind.n = factor(rep(c(1:6, 2, 5:12), each = 2))))
#>     Response Patient Treatment ind.n
#> 1  Resistant       1       pre     1
#> 2  Resistant       1      post     1
#> 3  Resistant       2       pre     2
#> 4  Resistant       2      post     2
#> 5  Resistant       3       pre     3
#> 6  Resistant       3      post     3
#> 7  Resistant       4       pre     4
#> 8  Resistant       4      post     4
#> 9  Resistant       5       pre     5
#> 10 Resistant       5      post     5
#> 11 Resistant       6       pre     6
#> 12 Resistant       6      post     6
#> 13 Sensitive       8       pre     2
#> 14 Sensitive       8      post     2
#> 15 Sensitive      11       pre     5
#> 16 Sensitive      11      post     5
#> 17 Sensitive      12       pre     6
#> 18 Sensitive      12      post     6
#> 19 Sensitive      13       pre     7
#> 20 Sensitive      13      post     7
#> 21 Sensitive      14       pre     8
#> 22 Sensitive      14      post     8
#> 23 Sensitive      15       pre     9
#> 24 Sensitive      15      post     9
#> 25 Sensitive      16       pre    10
#> 26 Sensitive      16      post    10
#> 27 Sensitive      17       pre    11
#> 28 Sensitive      17      post    11
#> 29 Sensitive      18       pre    12
#> 30 Sensitive      18      post    12

vd <- ExploreModelMatrix(
  sampleData = sampleData,
  designFormula = ~ Response + Response:ind.n + Response:Treatment,
  textSizeFitted = 3
)
cowplot::plot_grid(plotlist = vd$plotlist, ncol = 1)

library("ggplot2")
ggplot(as.data.frame(colData(rse_gene)), aes(y = mitoRate, x = PrimaryDx)) +
  geom_boxplot() +
  theme_bw(base_size = 20) +
  ylab("mitoRate") +
  xlab("PrimaryDx")


app <- ExploreModelMatrix(
  sampleData = sampleData,
  designFormula = ~ genotype + treatment
)
if (interactive()) shiny::runApp(app)
