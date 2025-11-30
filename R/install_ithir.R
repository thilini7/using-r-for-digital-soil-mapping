## Find the folder where this script lives
script_dir <- dirname(normalizePath(sys.frame(1)$ofile))

## Path to local ithir package (ithir folder is in the same directory)
ithir_path <- file.path(script_dir, "ithir")

## Install ithir from local folder if not already installed
if (!requireNamespace("ithir", quietly = TRUE)) {
  
  # Install remotes only if it's not already available
  if (!requireNamespace("remotes", quietly = TRUE)) {
    install.packages("remotes")
  }
  
  remotes::install_local(ithir_path)
}

## Load ithir
library(ithir)

## (Optional) show version
packageVersion("ithir")
