showMethods("show")

lab_member <- s4_student()
isS4(lab_member)
slot(lab_member, "name")

methods::getClass("data.frame")
methods::isGeneric("print")
methods::getGeneric("print")
methods::isGeneric("show")
methods::getGeneric("show")
methods::showMethods("show")
methods::selectMethod("show", "genericFunction")
methods::showMethods("print")


methods::setAs()
