library(data.table)
# phred.txt is a matrix having phred scores. A row representing a read and a column representing base position.
# i.e a 1000 X 150 matrix would mean, phred scores of 1000 reads for all 150 position (read lenght would be 150).

# reading a file using fread function from library "data.table". Basic "read.table" function is pretty slow.
qual_file<-fread("phred.txt")

# colMeans would take the mean of all the columns separately which is average phred score per base position.
colMeans(qual_file)

# simply plotting the colmeans and removing the x-axis (xaxt="n") so that a custom axis could be plotted
plot(colMeans(qual_file), xlab="Position in read(bp)", ylab="phred score", main="Mean quality distribution by position", xaxt = "n")

# adding a custom  axis of a series of integers from 1 to 150, at bottom (1st parameter is "1")
axis(1, at=1:150, labels=seq(to=150, from=1, by=1))

# Adding a line in the plot
lines(colMeans(qual_file))

#Adding a red colored grid for easy visualization
grid (NULL,NULL, lty = 6, col = "red") 

#Output is qual.png as attached here
