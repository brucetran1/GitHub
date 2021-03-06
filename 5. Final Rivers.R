#Final Rivers
setwd("F:\\University\\Honours\\Research Project\\Rivers")
Final_Rivers <- read.csv("F:\\University\\Honours\\Research Project\\Station Data\\Final_RiverStations.csv",
                         header = T)

files <- dir(pattern = ".csv")
flist <- strsplit(files, ".csv")
river.names <- as.character(Final_Rivers$Station_Number)

pattern <- paste(river.names , sep = "", collapse  = "|")

# ?list.files
# list.rivers <- list.files(pattern)

matching <- match(river.names, flist)

for (i in 1:length(river.names)) {
  file.copy(paste(files[matching[i]]), "Final", overwrite = T)
}


