methods("print")

getS3method("print", "lm")

lab_member <- list(name = "Dave Smith",
                   age = 25,
                   research_topic = "island biogeography")

#assign S3 class
class(lab_member) <- "s3_student"
#unassign S3 class
unclass(lab_member)

sloop::ftype(print)
sloop::s3_dispatch(print(lab_member))

typeof(lab_member)
attributes(lab_member)
