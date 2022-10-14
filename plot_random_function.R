##########################
## plot_random_function.R
##
## Dr Tom Fisher
##
## Purpose:
##  A function that will generate a random
##    sample of normal values, plot a histogram
##    with an overlaid mean on the plot
##    and returns summary statistics about the
##    generated data.
##
## Inputs:
##    numpts = the number of points to generate, defaults to 50
##    bins   = the number of breakpoints in the hist() function,
##             defaults to 10
##    mu     = mean of Normal distribution, defaults to 0
##    sigma  = standard deviation of Normal distribution, 
##             defaults to 1
##    seed   = seed for the random number generator, defaults
##             to NULL -- so random each time, but user
##             can override the value
##
## Outputs:
##      A list is returned with the following elements
##   Random_Sample = the generated random sample
##   Mean_sample   = the mean of the random sample
##   SD_sample     = the standard deviation of the random sample
##


plotRandomNormals <- function(numpts=50, bins=10,
                              mu=0, sigma=1,
                              seed=NULL) {
  set.seed(seed)
  rand_sample <- rnorm(numpts, mean=mu, sd=sigma)
  hist(rand_sample, breaks=bins+1)
  abline(v = mean(rand_sample), col="blue" )
  list(Random_Sample = rand_sample, 
       Mean_sample = mean(rand_sample),
       SD_sample = sd(rand_sample) )
}

## Default values
plotRandomNormals()

## User specified number of points
plotRandomNormals(numpts=30)

plotRandomNormals(numpts=1000, bins=200)

plotRandomNormals(numpts=1000, bins=20, mu=63.5, sigma=4.5)

plotRandomNormals(seed=1)
