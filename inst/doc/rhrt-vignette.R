## -----------------------------------------------------------------------------
library("RHRT")
# testdataLong is a numeric vector of RR intervals in msec
data("testdataLong", package = "RHRT")
ints <- testdataLong
# testdataLong_Ann is a character vector of annotations corresponding to testdataLong
data("testdataLong_Ann", package = "RHRT")
ann <- testdataLong_Ann

## -----------------------------------------------------------------------------
hrtl <- vectorToHRT(ints) 

## -----------------------------------------------------------------------------
hrtl <- vectorToHRT(ints, annotations = ann, PVCAnn = "V")

## -----------------------------------------------------------------------------
getResults(hrtl) # get the HRT class of the data

## -----------------------------------------------------------------------------
getResults(hrtl, safe = FALSE) # get the HRT class without safety check

## -----------------------------------------------------------------------------
getResults(hrtl, safe = FALSE, TT = TRUE) # include TT

## -----------------------------------------------------------------------------
getResults(hrtl, type = "parameter", TT = TRUE) # get the averaged HRT parameters

## ---- fig.width=7, fig.height=4-----------------------------------------------
plot(hrtl, TT = TRUE) # plots the averaged VPCS and all underlying VPCSs in background

## ---- fig.width=7, fig.height=4-----------------------------------------------
plot(hrtl, cropped = FALSE) # shows also coupling and compensatory interval

## ---- fig.width=7, fig.height=4-----------------------------------------------
hrtl <- vectorToHRT(testdataLong) # create the HRTList
getResults(hrtl) # get the averaged HRT parameters
plot(hrtl) # plot the HRTs and check the variability

## ---- fig.width=7, fig.height=4-----------------------------------------------
round(
  getResults(hrtl, "full", TT = TRUE),
digits = 2) # get the parameters and p-values of the variability check
plot(hrtl, cropped = FALSE) # plot the full VPCSs

## -----------------------------------------------------------------------------
tos <- getHRTParams(hrtl, "TO")
tos
summary(tos)
boxplot(tos)

## ---- fig.width=4, fig.height=4-----------------------------------------------
hrtl10 <- getHRTParams(vectorToHRT(testdataLong, numPostRRs = 10), "TS")
hrtl20 <- getHRTParams(vectorToHRT(testdataLong, numPostRRs = 20), "TS")
boxplot(hrtl10, hrtl20, names = c("TSRR = 10", "TSRR = 20"))
t.test(hrtl10, hrtl20)

