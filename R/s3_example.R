# example of an S3 class

lab_member <- list(name = "Dave Smith",
                   age = 25,
                   research_topic = "island biogeography")

class(lab_member) <- "s3_student"
attributes(lab_member)

print <- function(obj) {
  UseMethod("print")
}

name.default <- function(obj) {
  cat("Name of lab student is: ", name)
}
