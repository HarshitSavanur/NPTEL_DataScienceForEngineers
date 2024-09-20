# Sample data
X <- c(80, 75, 85, 70, 65)  # Replace with your actual data for X
Y_actual <- c(85, 70, 80, 95, 70)  # Replace with your actual Y values

# Create data frame
data <- data.frame(X, Y_actual)

# Fit the linear model using lm()
model <- lm(Y_actual ~ X, data = data)

# Display the summary of the model
model_summary <- summary(model)

# Extract R-squared and Adjusted R-squared from the model
R_squared <- model_summary$r.squared
Adjusted_R_squared <- model_summary$adj.r.squared

# Simulate predictions using the given function Y = 0.2X + 60
Y_pred_simulated <- 0.2 * X + 60

# Calculate R-squared for the simulated function
SS_tot <- sum((Y_actual - mean(Y_actual))^2)
SS_res_simulated <- sum((Y_actual - Y_pred_simulated)^2)
R_squared_simulated <- 1 - (SS_res_simulated / SS_tot)

# Output results
cat("Fitted Model R-squared:", R_squared, "\n")
cat("Fitted Model Adjusted R-squared:", Adjusted_R_squared, "\n")
cat("Simulated Model R-squared:", R_squared_simulated, "\n")
