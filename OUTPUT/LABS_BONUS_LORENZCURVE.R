
#################################
# LABORATORIO LORENZ.CURVE      #
#################################

# GENERATE VECTORS OF INDUSTRIAL COUNT
ind <- c(0, 10, 10, 30, 50)

# RUN THE FUNCTION
Lorenz.curve (ind)
Lorenz.curve (ind, pdf = TRUE)
Lorenz.curve (ind, plot = FALSE)

# GENERATE A REGION- INDUSTRY MATRIX
mat= matrix (
  c (0, 1, 0, 0,
     0, 1, 0, 0,
     0, 1, 0, 0,
     0, 1, 0, 1,
     0, 1, 1, 1), ncol = 4, byrow = T)
rownames(mat) <- c ("R1", "R2", "R3", "R4", "R5")
colnames(mat) <- c ("I1", "I2", "I3", "I4")

# RUN THE FUNCTION
Lorenz.curve (mat)
Lorenz.curve (mat, pdf = TRUE)
Lorenz.curve (mat, plot = FALSE)

# RUN THE FUNCTION BY AGGREGATION ALL INDUSTRIES
Lorenz.curve (rowSums(mat))
Lorenz.curve (rowSums(mat), pdf = TRUE)
Lorenz.curve (rowSums(mat), plot = FALSE)

# RUN THE FUNCTION FOR INDUSTRIY #1 ONLY (PERFECT EQUALITY)
Lorenz.curve (mat[,1])
Lorenz.curve (mat[,1], pdf = TRUE)
Lorenz.curve (mat[,1], plot = FALSE)

# RUN THE FUNCTION FOR INDUSTRIY #2 ONLY (PERFECT EQUALITY)
Lorenz.curve (mat[,2])
Lorenz.curve (mat[,2], pdf = TRUE)
Lorenz.curve (mat[,2], plot = FALSE)

# RUN THE FUNCTION FOR INDUSTRIY #3 ONLY (PERFECT UNEQUALITY)
Lorenz.curve (mat[,3])
Lorenz.curve (mat[,3], pdf = TRUE)
Lorenz.curve (mat[,3], plot = FALSE)

# RUN THE FUNCTION FOR INDUSTRIY #4 ONLY (PERFECT UNEQUALITY)
Lorenz.curve (mat[,4])
Lorenz.curve (mat[,4], pdf = TRUE)
Lorenz.curve (mat[,4], plot = FALSE)

# COMPARE THE DISTRIBUTION OF THE INDUSTRIES
par(mfrow=c(2,2))
Lorenz.curve (mat[,1])
Lorenz.curve (mat[,2])
Lorenz.curve (mat[,3])
Lorenz.curve (mat[,4])
