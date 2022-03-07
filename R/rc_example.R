rc_student <- setRefClass(
  Class = "rc_student",
  fields = list(
    name = "character",
    age = "numeric",
    research_topic = "character"
  ),
  methods = list(
    set_research_topic = function(x) {
      research_topic <<- x
    }
  )
)


lab_member <- rc_student()
lab_member$name <- "Sally"
lab_member$age <- 30
lab_member

same_lab_member <- lab_member
same_lab_member$age <- 31
lab_member

another_lab_member <- lab_member$copy()
another_lab_member$age <- 32
lab_member


