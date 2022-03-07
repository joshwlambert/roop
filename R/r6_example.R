r6_Student <- R6::R6Class(
  classname = "r6_student",

  public = list(
    name = NULL,
    age = NULL,

    initialize = function(name = NA_character_,
                          age = NA_integer_) {
      self$name <- name
      self$age <- age
    },

    set_name = function(x) {
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

lab_member <- r6_student$new(name = "Harry", age = 25)
lab_member$set_research_topic("biology")
lab_member

lab_member$age <- 26

another_lab_member <- lab_member$clone()
another_lab_member

rm(lab_member)
gc()
