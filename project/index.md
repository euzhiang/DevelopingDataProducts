---
title       : Developing Data Products Project
subtitle    : Impact of amount of training data on accuracy of prediction algorithm
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background

* Purpose of this application is to determine the impact of the amount of training data on the accuracy of the prediction algorithm. 
* The prediction algorithm used is based on the random forest machine learning method using the spam dataset.
* User can choose any value between 1% to 99% to be used as training data and the rest of the data would be used for testing. 
* The confusion matrix would be shown for the test data.


--- 

## Results for 1% and 10%


1% of data used as training data

```
##       Accuracy          Kappa  AccuracyLower  AccuracyUpper   AccuracyNull 
##    0.865832235    0.716783953    0.855588658    0.875604149    0.606060606 
## AccuracyPValue  McnemarPValue 
##    0.000000000    0.001210249
```

10% of data used as training data

```
##       Accuracy          Kappa  AccuracyLower  AccuracyUpper   AccuracyNull 
##      0.9287440      0.8506321      0.9204802      0.9363963      0.6060386 
## AccuracyPValue  McnemarPValue 
##      0.0000000      0.6413744
```

---

## Results for 60% and 90%
60% of data used as training data

```
##       Accuracy          Kappa  AccuracyLower  AccuracyUpper   AccuracyNull 
##   9.418478e-01   8.772477e-01   9.301593e-01   9.521013e-01   6.059783e-01 
## AccuracyPValue  McnemarPValue 
##  4.402340e-245   1.977727e-03
```

90% of data used as training data

```
##       Accuracy          Kappa  AccuracyLower  AccuracyUpper   AccuracyNull 
##   9.542484e-01   9.039414e-01   9.309118e-01   9.714593e-01   6.056645e-01 
## AccuracyPValue  McnemarPValue 
##   1.418582e-68   6.625206e-01
```

---
## Conclusion
* If too little data is used for training, the accuracy would be low.
* If too much data is used for training, then the user may not be sure that the algorithm will work equally well on other data sets
* From the results shown, 60% of the data used for training and 40% of the data used for testing works reasonably well.


