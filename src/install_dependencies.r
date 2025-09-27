# Load the local library path first
dir.create("r_libs",showWarnings = FALSE)
.libPaths("r_libs")

packages_to_install <- c("DBI", "RSQLite", "tidyverse", "tidymodels", "tidyclust")

for (pkg in packages_to_install) {
  # Check if the package is already installed in the current libPaths
  if (!requireNamespace(pkg, quietly = TRUE)) {
    # If not installed, install it into the local r_libs folder
    install.packages(
      pkg,
      lib = "r_libs",
      repos = "https://cloud.r-project.org"
    )
    print(paste0(pkg, " installed."))
  } else {
    print(paste0(pkg, " is already installed."))
  }
}