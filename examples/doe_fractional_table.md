# Fractional Factorial Design Trade-off Table

*Note: This matrix maps the number of factors (k) against the number of runs, displaying the standard fractional designs, their resolution, and optimal design generators.*

| Runs | $k=3$ | $k=4$ | $k=5$ | $k=6$ | $k=7$ | $k=8$ | $k=9$ |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **4** | $2_{III}^{3-1}$ ❌<br>$\pm C=AB$ | | | | | | |
| **8** | $2^3$ ✅<br>*(full)* | $2_{IV}^{4-1}$ ⚠️<br>$\pm D=ABC$ | $2_{III}^{5-2}$ ❌<br>$\pm D=AB$<br>$\pm E=AC$ | $2_{III}^{6-3}$ ❌<br>$\pm D=AB$<br>$\pm E=AC$<br>$\pm F=BC$ | $2_{III}^{7-4}$ ❌<br>$\pm D=AB$<br>$\pm E=AC$<br>$\pm F=BC$<br>$\pm G=ABC$ | | |
| **16** |  | $2^4$ ✅<br>*(full)* | $2_{V}^{5-1}$ ⚠️<br>$\pm E=ABCD$ | $2_{IV}^{6-2}$ ⚠️<br>$\pm E=ABC$<br>$\pm F=ABD$ | $2_{IV}^{7-3}$ ⚠️<br>$\pm E=ABC$<br>$\pm F=ABD$<br>$\pm G=ACD$ | $2_{IV}^{8-4}$ ⚠️<br>$\pm E=ABC$<br>$\pm F=ABD$<br>$\pm G=ACD$<br>$\pm H=BCD$ | $2_{III}^{9-5}$ ❌ |
| **32** |  |  | $2^5$ ✅<br>*(full)* | $2_{VI}^{6-1}$ ⚠️<br>$\pm F=ABCDE$ | $2_{IV}^{7-2}$ ⚠️<br>$\pm F=ABC$<br>$\pm G=ABDE$ | $2_{IV}^{8-3}$ ⚠️<br>$\pm F=ABC$<br>$\pm G=ABD$<br>$\pm H=ACDE$ | $2_{IV}^{9-4}$ ⚠️ |
| **64** |  |  | | $2^6$ ✅<br>*(full)* | $2_{VII}^{7-1}$ ⚠️<br>$\pm G=ABCDEF$ | $2_{V}^{8-2}$ ⚠️<br>$\pm G=ABCD$<br>$\pm H=ABEF$ | $2_{IV}^{9-3}$ ⚠️ |

```R

library(FrF2)
library(knitr)

# ==============================================================================
# 1. GENERATE THE RAW LOOKUP DATA (Fractional Designs)
# ==============================================================================
doe_lookup <- data.frame(
  Factors    = sapply(catlg, function(x) x$nfac),
  Runs       = sapply(catlg, function(x) x$nruns),
  Resolution = sapply(catlg, function(x) x$res)
)

clean_lookup <- aggregate(Resolution ~ Factors + Runs, data = doe_lookup, max)
final_table <- subset(clean_lookup, Factors >= 2 & Factors <= 20)

# ==============================================================================
# 2. PIVOT INTO A 2D MATRIX
# ==============================================================================
res_matrix <- tapply(final_table$Resolution, 
                     list(Runs = final_table$Runs, Factors = final_table$Factors), 
                     max)

# Convert the numeric matrix to a character matrix so we can insert text
res_char_matrix <- as.matrix(res_matrix)
runs_vals <- as.numeric(rownames(res_char_matrix))
factors_vals <- as.numeric(colnames(res_char_matrix))

# ==============================================================================
# 3. INJECT FULL FACTORIALS AND CLEAN UP
# ==============================================================================
for (i in seq_along(runs_vals)) {
  for (j in seq_along(factors_vals)) {
    r <- runs_vals[i]
    f <- factors_vals[j]
    
    # Rule 1: If Runs exactly equals 2^Factors, it's a Full Factorial
    if (r == 2^f) {
      res_char_matrix[i, j] <- "Full"
    } 
    # Rule 2: If Runs are greater than 2^Factors, it's a Replicated Full Factorial
    else if (r > 2^f) {
      res_char_matrix[i, j] <- "" 
    } 
    # Rule 3: Replace any remaining NAs (impossible designs) with a dash
    else if (is.na(res_char_matrix[i, j])) {
      res_char_matrix[i, j] <- "   "
    }
  }
}

# ==============================================================================
# 4. PRINT FOR PUBLICATION
# ==============================================================================
kable(res_char_matrix, align = "c", caption = "Max Resolution by Runs and Factors")

```
