
##############################
#LABORATORIO PLOT_HOOVER     #
##############################

#instalar 
install.packages("devtools")
install.packages("devtools", type = "win.binary")

library(devtools)
devtools::install_github("PABalland/EconGeo", force = T)
library(EconGeo)

#generate vectors industrial 

ind <- c(0, 10, 10, 30, 50)
pop <- c(10, 15, 20, 25, 30)

# CHECK VECTOR
ind

# CHECK VECTOR POP
pop

# RUN THE FUNTION (30% de la poblacion produce 50% de los resultados industriales)
Hoover.curve (ind, pop)

#COMPUTE HOOVER GINI
Hoover.Gini (ind, pop)

