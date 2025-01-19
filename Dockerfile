FROM --platform=${BUILDPLATFORM} rocker/rstudio:latest

LABEL project="Simplifying Complex Spaces"

# Install necessary libraries 
#RUN install2.r --error tidyverse broom RSQLite knitr openxlsx roxygen2 olsrr
#RUN install2.r --error ggplot2 broom RSQLite knitr openxlsx roxygen2 olsrr
RUN install2.r --error  broom RSQLite knitr openxlsx abind Formula MASS mgcv nnet dplyr methods numDeriv Matrix doBy pbkrtest

LABEL maintainer="Tom Stuckey"<tstuckey@simplifyingcomplexspaces.com>