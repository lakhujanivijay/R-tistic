### About the program

This program is an attempt to simluate the [Per Base Sequence Quality](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/3%20Analysis%20Modules/2%20Per%20Base%20Sequence%20Quality.html) metric from [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) using R.

### Input data

A text file which is a matrix having [phred scores](https://en.wikipedia.org/wiki/Phred_quality_score). A row representing a read and a column representing base position.
# i.e a 1000 X 150 matrix would mean, phred scores of `1000` reads for all `150` position (read lenght would be `150`).
