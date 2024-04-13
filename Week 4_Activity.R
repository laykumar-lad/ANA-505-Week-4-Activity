# Get the Titanic dataset from Base R and give it a new name
titanic_df <- as.data.frame(Titanic)

# See the top rows of the data
head(titanic_df)

# Install and call the dplyr package
install.packages("dplyr", repos="http://cran.us.r-project.org")
library("dplyr")

# Select the Survived and Sex columns
survived_sex_df <- select(titanic_df, Survived, Sex)

# Save the two columns as one new dataset and give it a name
survived_sex_df <- select(titanic_df, Survived, Sex)

# Get rid of the Sex column in the new dataset
survived_df <- select(survived_sex_df, -Sex)

# Rename the Sex column to Gender
gender_df <- rename(survived_sex_df, Gender = Sex)

# Make a new dataframe with the new column name
gender_df <- rename(survived_sex_df, Gender = Sex)

# Filter just the males from our dataset
Males_df <- filter(gender_df, Gender == "Male")

# Arrange our data by gender
gender_df <- arrange(gender_df, Gender)

# Sum the Freq column
sum(titanic_df$Freq)

# Total: 1307

# Make a Females dataset
Females_df <- filter(gender_df, Gender == "Female")

# Join the males and females
all_passengers_df <- bind_rows(Males_df, Females_df)
