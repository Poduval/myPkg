library(devtools)
devtools::session_info()

# create_package(path = getwd())
# use_git()

# adding a function ====

use_r("add2vars")

exists("add2vars", where = globalenv(), inherits = FALSE)
load_all()
add2vars(12, 14)

check()

use_mit_license()
document()
use_git_ignore("make_package.R")
use_build_ignore("make_package.R")

install()

library(myPkg)
myPkg::add2vars(2, 3)

use_testthat()
use_test("add2vars")
test()

use_github()
use_readme_rmd()
build_readme()

check()
install()

devtools::dev_sitrep()
# devtools::update_packages("devtools")
# devtools::install_dev_deps()

dir.create("release")
devtools::build(path = "release/", binary = TRUE, vignettes = TRUE)

usethis::use_build_ignore("release")
