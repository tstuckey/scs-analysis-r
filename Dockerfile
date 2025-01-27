FROM --platform=${BUILDPLATFORM} rocker/rstudio:latest

LABEL project="Simplifying Complex Spaces"

# Install necessary libraries 

COPY ./scripts/install_tidyverse.sh  /scripts/

# !!!INCLUDE THIS FOR FULL REBUILD
RUN /scripts/install_tidyverse.sh # only include on full rebuilds 

RUN apt-get update
RUN apt-get install -y --no-install-recommends libxml2-dev cmake pkg-config libz-dev

RUN install2.r --error \
    knitr \
    openxlsx \
    xml2 \
    roxygen2 \ 
    broom \
    MASS \
    numDeriv \
    Matrix \
    doBy \
    nloptr \
    lme4 \
    pbkrtest \
    car \
    httpuv \
    shiny \
    olsrr \
    here
    
    
LABEL maintainer="Tom Stuckey"<tstuckey@simplifyingcomplexspaces.com>   