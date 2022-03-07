# validity function
check_student <- function(obj) {
  if (obj@age > 0) {
    stop("Age must be greater than zero")
  }
  if (obj@research_topic == "ecology_of_fear") {
    stop("Student cannot study this topic")
  }
}

# class definition
setClass(
  Class = "Student",

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

  validity = check_student
)

# constructor
student <- methods::new("Student")
