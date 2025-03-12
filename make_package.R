library(devtools)

devtools::session_info()

# create_package(path = getwd())

use_git()

# adding a function ====

add2vars <- function(x, y ) {
  x + y
}

