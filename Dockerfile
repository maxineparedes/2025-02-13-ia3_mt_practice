# Use the base RStudio image
FROM rocker/rstudio:4.4.2

COPY 
# Install remotes package first
RUN Rscript -e 'install.packages("remotes")'

# Use remotes::install_version() to install a specific version of cowsay
RUN Rscript -e 'remotes::install_version("cowsay", version = "0.8.0")'
