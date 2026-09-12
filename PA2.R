# PA2
# ANDREW ZACHMAN
# 2026.09.13
# Calculating population increase for year 2020 based on 2000/2010 data
# for states that start with the letter 'A';

# Create vector for year 2000 population data;
Y2000 <- c(4447100, 626932, 5130632, 2673400)

# Create vector for year 2010 population data;
Y2010 <- c(4779735, 710231, 6329013, 2915921)

# Create matrix with 2000/2010 population data;
MPop <- cbind(Y2000, Y2010) # Matrix Population
print(MPop)

# Create vector of the percentage increase in population between 2000-2020;
# Using element extraction with vector operations;
# Formula: (2010 - 2000) / 2000
PRate <- c(MPop[1:4,2] - MPop[1:4]) / MPop[1:4] # Population Rate

# Calculate 2020 population using percentage increase into a vector;
# Formula: 2010 * (1 + %)
Y2020 <- c(MPop[,2] * c(1 + PRate))

# Combine and overwrite population matrix with new 2020 data;
MPop <- cbind(Y2000, Y2010, Y2020)
print(MPop)
