# example of function calling from functional classes (here S4 is used as
# an example) and from encapsulated classes (here R6 is used as an example)

# define S4 class

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

# method for setting the name
setGeneric("set_s4_name<-", function(x, value) standardGeneric("set_s4_name<-"))
setMethod("set_s4_name<-", "s4_student", function(x, value) {
  x@age <- value
  x
})

# define an R6 class
r6_student <- R6::R6Class(
  classname = "r6_student",

  public = list(
    name = NULL,
    age = NULL,

    initialize = function(name = NA_character_,
                          age = NA_integer_) {
      self$name <- name
      self$age <- age
    },

    set_r6_name = function(x) {
      self$name <- x
      invisible(self)
    },

    set_research_topic = function(x) {
      private$research_topic <- x
      invisible(self)
    }
  ),

  private = list(
    research_topic = "character",
    finalize = function() {
      print("Finalizer has been called")
    }
  ),
)

# functional
s4_lab_member <- s4_student()
set_s4_name(s4_lab_member) <- "James"

# encapsulated
r6_lab_member <- r6_student$new()
r6_lab_member$set_r6_name("James")
