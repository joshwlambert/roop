# example of an S3 class

lab_member <- list(name = "Dave Smith",
                   age = 25,
                   research_topic = "island biogeography")

class(lab_member) <- "s3_student"
attributes(lab_member)

# create generic function
print <- function() {
  UseMethod("print")
}

print.s3_student <- function(obj) {
  cat("S3 Student Class \n")
  cat("Name of lab student is: ", obj$name, "\n")
  cat("Age of lab student is: ", obj$age, "\n")
  cat("Research topic is: ", obj$research_topic)
}

lab_member
