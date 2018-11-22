
# ezviewr

[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![Travis build
status](https://travis-ci.org/jooyoungseo/ezviewr.svg?branch=master)](https://travis-ci.org/jooyoungseo/ezviewr)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/jooyoungseo/ezviewr?branch=master&svg=true)](https://ci.appveyor.com/project/jooyoungseo/ezviewr)
[![Codecov test
coverage](https://codecov.io/gh/jooyoungseo/ezviewr/branch/master/graph/badge.svg)](https://codecov.io/gh/jooyoungseo/ezviewr?branch=master)

The goal of ezviewr is to provide R users with convenient function to
open their data objects with their preferable spreadsheet application
window (e.g., Excel).

## Installation

### Development Version

You can install the latest development version as follows:

``` r
if(!require(devtools)) {
install.packages("devtools")
}

devtools::install_github('jooyoungseo/ezviewr')
```

### Stable Version

You can install the released version of ezviewr from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("ezviewr")
```

## Example

You can open any data.frame, tibble, matrix, or vector from an R session
into your default-set spreadsheet application window as follows:

``` r
library(ezviewr)

data(airquality)
str(airquality)

# Use `view()` function to open your data object in your spreadsheet:
view(airquality)

# Then, when necessary, you can modify the opened data in the spreadsheet and save it as a new data.
```
