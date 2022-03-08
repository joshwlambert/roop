# example of real S3 class: phylo class
# the phylo class is from the ape R package
# see http://ape-package.ird.fr/misc/FormatTreeR_24Oct2012.pdf for details

library(ape)
tree <- list(
  edge = matrix(c(3, 3, 1, 2), ncol = 2),
  edge.length = c(1, 1),
  tip.label = c("a", "b"),
  Nnode = 1)
class(tree) <- "phylo"
plot(tree)
plot.phylo(tree)
ape::Nnode(tree)
tree <- unclass(tree)
ape::Nnode(tree)

# example of real S4 class: phylo4 class
# the phylo4 class is from the phylobase R package
# see https://cran.r-project.org/web/packages/phylobase/vignettes/phylobase.pdf
# for details
# Note the validity function is commented out in this example, but is included
# in the phylobase class

library(phylobase)

setClass(
  "phylo4",
  slots = c(edge = "matrix",
            edge.length = "numeric",
            label = "character",
            edge.label = "character",
            order = "character",
            annote = "list"),
  prototype = list(
    edge = matrix(nrow = 0, ncol = 2,
                  dimnames = list(NULL, c("ancestor", "descendant"))),
    edge.length = numeric(0),
    label = character(0),
    edge.label = character(0),
    order = "unknown",
    annote = list()
  )
  #validity = checkPhylo4
)

tree <- as(tree, "phylo4")
plot(tree)
