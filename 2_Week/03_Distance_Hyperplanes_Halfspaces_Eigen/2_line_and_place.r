# Define the matrix A
A <- matrix(c(-1, 2, 2), nrow=3, ncol=1)

# Calculate AA^T
AAT <- A %*% t(A)

# Find the eigenvalues of AA^T
eigenvalues <- eigen(AAT)$values

# Print the eigenvalues
print(eigenvalues)
