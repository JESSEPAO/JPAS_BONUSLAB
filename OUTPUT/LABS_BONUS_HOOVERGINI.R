
############################
#LABORATORIO HOOVER GINI   #
############################

USAGE
Hoover.Gini(MAT,POP)

# GENERATE VECTORS OF INDUSTRIAL COUNT
ind <- c(0, 10, 10, 30, 50)
pop <- c(10, 15, 20, 25, 30)

# RUN THE FUNCTION
Hoover.Gini (ind,pop)

# GENERATE A REGION-INDUSTRY MATRIX
mat = matrix (
  c (0, 10, 0, 0,
     0, 15, 0, 0,
     0, 20, 0, 0,
     0, 25, 0, 1,
     0, 30, 1, 1), ncol = 4, byrow = T)
rownames(mat) <- c ("R1", "R2", "R3", "R4", "R5")
colnames(mat) <- c ("I1", "I2", "I3", "I4")

# RUN THE FUNCTION
Hoover.Gini (mat,pop)

# RUN THE FUNCTION BY AGGREGATING ALL INDUSTRIES
Hoover.Gini (rowSums(mat),pop)

# RUN THE FUNCTION #1 ONLY
Hoover.Gini (mat[,1],pop)

# RUN THE FUNCTION #2 ONLY (perfectamente proporcional)
Hoover.Gini (mat[,2],pop)

# RUN THE FUNCTION #3 ONLY (30% produce el 100% de la producción)
Hoover.Gini (mat[,3], pop)

# RUN THE FUNCTION #4 ONLY (55% produce el 100% de la producción)
Hoover.Gini (mat[,4], pop)
