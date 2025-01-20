FROM --platform=${BUILDPLATFORM} rocker/rstudio:latest

LABEL project="Simplifying Complex Spaces"

# Install necessary libraries 
#RUN install2.r --error tidyverse broom RSQLite knitr openxlsx roxygen2 olsrr

COPY ./rocker-versioned2/scripts/scripts  /rocker_scripts/

#RUN /rocker_scripts/install_tidyverse.sh
#RUN install2.r --error ggplot2 broom RSQLite knitr openxlsx roxygen2 olsrr

LABEL maintainer="Tom Stuckey"<tstuckey@simplifyingcomplexspaces.com>   