
library(ggplot2)
library(reshape2)
climate <- read.csv("http://inundata.org/climate.csv")
climate$lower <- climate$Anomaly10y - climate$Unc10y
climate$upper <- climate$Anomaly10y + climate$Unc10y

# Note that this line combines two steps.
# 1. I'm subsetting the data to just the columns I need
# 2. I'm melting it.
# If it helps you learn, try this.
# intermediate_data <- climate[, c(3,6, 8, 9)]
# But it's often hard to count and get the right column numbers
# so we select by column name as shown below.
# Then we melt, using Year as the id variable.
# ----
small_climate <- melt(climate[, c("Year", "Anomaly10y", "lower", "upper")], id.vars = "Year")

# This makes the 3 lines ordered correctly
small_climate$variable <- factor(small_climate$variable, levels = c("upper", "Anomaly10y", "lower"))

# Now we plot
ggplot(small_climate, aes(Year, value, color = variable)) + 
geom_line() 

# With Colors
ggplot(small_climate, aes(Year, value, color = variable)) + 
geom_line()  +
scale_color_manual(values = c("red", "black", "blue"))

# Colors using a palette
library(RColorBrewer)
ggplot(small_climate, aes(Year, value, color = variable)) + 
geom_line() + 
scale_color_manual(values = brewer.pal(3,"Set1"))