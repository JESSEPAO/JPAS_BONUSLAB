
----------------------------------
##############################
#  LOCATIONAL.GINI_CURVE     #
##############################

# GENERATE A RECION-INDUSTRI MATRIX
mat = matrix (
  c (100, 0, 0, 0, 0,
     0, 15, 5, 70, 10,
     0, 20, 10, 20, 50,
     0, 25, 30, 5, 40,
     0, 40, 55, 5, 0), ncol = 5, byrow = T)
rownames(mat) <- c ("R1", "R2", "R3", "R4", "R5")
colnames(mat) <- c ("I1", "I2", "I3", "I4", "I5")

# RUN THE FUNCTION (SHOWS INDUSTRY #5)
locational.Gini.curve (mat)
locational.Gini.curve (mat, pdf = TRUE)
