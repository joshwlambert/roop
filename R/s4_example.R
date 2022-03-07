# validity function
check_s4_student <- function(object) {
  if (object@age > 0 || is.na(object@age)) {
    stop("Age must be greater than zero")
  }
  if (object@research_topic == "ecology_of_fear" || is.na(object@age)) {
    stop("Student cannot study this topic")
  }
}

# class definition
s4_student <- setClass(
  Class = "s4_student",

  slots = list(
    name = "character",
    age = "numeric",
    research_topic = "character"
  ),

  prototype = list(
    name = NA_character_,
    age = NA_integer_,
    research_topic = NA_character_
  ),

  validity = check_s4_student
)

setGeneric("print", "s4_student", standardGeneric(""))
setMethod("print", "s4_student", function(object) {
  cat("S4 Student Class")
  cat("Name of lab student is: ", object@name)
})

