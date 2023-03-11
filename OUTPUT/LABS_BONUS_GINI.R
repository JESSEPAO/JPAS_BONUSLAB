
#################################
#LABORTARIO GINI                #
#################################

USAGE
# GENERATE VECTORS OF INDUSTRIAL COUNT
ind <- c(0, 10, 10, 30, 50)

# RUN THE FUNCTION
Gini (ind)

# GENERATE A REGION-INDUSTRY MATRIX
mat = matrix (
  c (0, 1, 0, 0,
     0, 1, 0, 0,
     0, 1, 0, 0,
     0, 1, 0, 1,
     0, 1, 1, 1), ncol = 4, byrow = T)
rownames(mat) <- c ("R1", "R2", "R3", "R4", "R5")
colnames(mat) <- c ("I1", "I2", "I3", "I4")

# RUN THE FUNCTION
Gini (mat)

# RUN THE FUNCTION BY AGGREGATING ALL INDUSTRIES
Gini (rowSums(mat))

# RUN THE FUNCTION #1 ONLY(igualdad perfecta)
Gini (mat[,1])

# RUN THE FUNCTION #2 ONLY (igualdad perfecta)
Gini (mat[,2])

# RUN THE FUNCTION #3 ONLY (desigualdad perfecta: max Gini = (5-1)/5)
Gini (mat[,3])

# RUN THE FUNCTION #4 ONLY (top 40% produce el 100% de los resultados)
Gini (mat[,4])
