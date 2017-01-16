# Conditional probability function of a competing event: The Cprob package #

The Cprob package permits to estimate the conditional probability
function of a competing event, and to fit, using the temporal process
regression or the pseudo-value approach, a proportional-odds model to
the conditional probability function (or other models by specifying
another link function).

## Installation ##

You can download the stable version
on [CRAN](/https://cran.r-project.org/web/packages/Cprob/index.html)

```{r}
install.packages("Cprob")
```
	
Or you can install the development version from github

```{r}
## if necessary
## install.packages("devtools")
devtools::install_github("aallignol/Cprob")
```

## Usage ##

The conditional probability function can be estimated using the `cpf` function.

```{r}
library(Cprob)

mgus$AGE <- ifelse(mgus$age < 64, 0, 1)
CP <- cpf(Hist(time, ev)~AGE, data = mgus)
CP
summary(CP)
```

A regression model can be fitted either using temporal process
regression

```{r}
fit.cpfpo <- cpfpo(Hist(time, ev)~ age + creat,
                   data = mgus, tis=seq(10, 30, 0.3),
                   w=rep(1,67))

## and plot the odds-ratios
if(require("lattice")) {
xyplot(fit.cpfpo, scales = list(relation = "free"), layout = c(3, 1))
}
```

or the pseudo-values approach

```{r}
data(mgus)

cutoffs <- quantile(mgus$time, probs = seq(0, 1, 0.05))[-1]

## with fancy variance estimation
fit1 <- pseudocpf(Hist(time, ev) ~ age + creat, mgus, id = id,
                  timepoints = cutoffs, corstr = "independence",
                  scale.value = TRUE)
summary(fit1)

## with jackknife variance estimation
fit2 <- pseudocpf(Hist(time, ev) ~ age + creat, mgus, id = id,
                  timepoints = cutoffs, corstr = "independence",
                  scale.value = TRUE, jack = TRUE)
summary(fit2)
}
```

