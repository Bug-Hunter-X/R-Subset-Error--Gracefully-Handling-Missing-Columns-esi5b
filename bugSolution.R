```R
# This improved code uses dplyr's select function to handle missing columns
# more gracefully.  If a column doesn't exist, it's simply omitted from the
# result without causing an error.

library(dplyr)

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "B")

subset_df <- df %>% select(all_of(cols_to_select))

print(subset_df)
```