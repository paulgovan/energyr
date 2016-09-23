## Test environments
* local OS X install, R 3.3.1
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs.

There was 1 NOTE:

* Possibly mis-spelled words in DESCRIPTION:
    hydropower (7:5)
    liquified (7:28)
  
  These words describe different types of energy industries.
  
## Downstream dependencies
I have also run R CMD check on downstream dependencies of energyr 
(https://github.com/wch/checkresults/blob/master/energyr/r-release). 
All packages passed.
