library(testthat)
library(hello)

test_check("hello", reporter = JunitReporter$new(file = "junit_result.xml"))
