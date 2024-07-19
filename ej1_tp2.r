library(markovchain)

# Distribucion inicial
pi_0 <- c(1/4, 1/4, 1/4, 1/4)

# Estados
estratos <- c("D", "MB", "MA", "A")

# Matriz de transicion
transicion <- matrix(c(0.75, 0.25, 0,    0,
                       0.10, 0.75, 0.15, 0,
                       0.05, 0.14, 0.80, 0.01,
                       0,    0,    0.05,  0.95), nrow = 4, byrow = TRUE)

cadena_markov <- new("markovchain", states = estratos,
                     transitionMatrix = transicion, name = "Ejercicio5")
