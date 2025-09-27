# Create a local library folder
dir.create("r_libs")

# Use it for this session
.libPaths("r_libs")

# Install packages here
install.packages("DBI", lib = "r_libs", repos = "https://cloud.r-project.org")
install.packages("RSQLite" , lib = "r_libs", repos = "https://cloud.r-project.org")
install.packages("tidyverse" , lib = "r_libs", repos = "https://cloud.r-project.org")
install.packages("tidymodels", lib = "r_libs", repos = "https://cloud.r-project.org")
install.packages("tidyclust", lib = "r_libs", repos = "https://cloud.r-project.org")
# Now ggplot2 is installed in r_libs, not globally
"Done!"