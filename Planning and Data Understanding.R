############## Load and Import the Dataset ####################
# Install and load necessary packages
if (!require("survival")) install.packages("survival", dependencies=TRUE)
library(survival)

# Load the dataset
data("colon")

# Make a copy to avoid modifying the original dataset
colon_data <- colon

############## Step 2: Explore the Dataset ####################
# View the first few rows
head(colon_data)

# Check the structure of the dataset
str(colon_data)

# Get summary statistics
summary(colon_data)

# Check for outliers in key variables (e.g., age, nodes)
boxplot(colon$age, main = "Boxplot of Age")
boxplot(colon$nodes, main = "Boxplot of Lymph Nodes")

# Check for missing values
colSums(is.na(colon_data))

############## Step 3: Define Censoring Variables ####################

# Check unique values for the censoring variables
table(colon_data$status)
table(colon_data$etype)

# Create a survival object for recurrence (etype = 1)
colon_recurrence <- colon[colon$etype == 1, ]
colon_recurrence$status <- as.numeric(colon_recurrence$status == 1)  # Event = 1 (recurrence)

# Create a survival object for death (etype = 2)
colon_death <- colon[colon$etype == 2, ]
colon_death$status <- as.numeric(colon_death$status == 1)  # Event = 1 (death)

##############  Step 4: Perform Descriptive Analysis ####################

# Load visualization package
if (!require("ggplot2")) install.packages("ggplot2", dependencies=TRUE)
library(ggplot2)

# Histogram of survival time
ggplot(colon_data, aes(x=time)) + 
  geom_histogram(binwidth=100, fill="steelblue", color="black") +
  labs(title="Distribution of Survival Times", x="Days", y="Frequency")

# Boxplot of survival time by treatment
ggplot(colon_data, aes(x=rx, y=time, fill=rx)) + 
  geom_boxplot() +
  labs(title="Survival Time by Treatment Group", x="Treatment", y="Days")

# Boxplot of survival time by tumor differentiation
ggplot(colon_data, aes(x=factor(differ), y=time, fill=factor(differ))) + 
  geom_boxplot() +
  labs(title="Survival Time by Tumor Differentiation", x="Tumor Differentiation", y="Days")

##########################################################
# Distribution of survival times
ggplot(colon_recurrence, aes(x = time)) + geom_histogram(binwidth = 100, fill = "blue", color = "black") + ggtitle("Distribution of Time to Recurrence")
ggplot(colon_death, aes(x = time)) + geom_histogram(binwidth = 100, fill = "red", color = "black") + ggtitle("Distribution of Time to Death")

# Summary statistics for survival times
summary(colon_recurrence$time)
summary(colon_death$time)

# Distribution of covariates (e.g., age, nodes)
ggplot(colon, aes(x = age)) + geom_histogram(binwidth = 5, fill = "green", color = "black") + ggtitle("Age Distribution")
ggplot(colon, aes(x = nodes)) + geom_histogram(binwidth = 1, fill = "purple", color = "black") + ggtitle("Distribution of Lymph Nodes")
