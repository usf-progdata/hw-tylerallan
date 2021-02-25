library(rethinking)
library(tidyverse)
library(psych)





#1. Use the `psych::bfi` dataset.

#2. Compute mean scores for each of the Big Five traits for each person.
meansacross <- bfi %>% 
  rowwise() %>% 
  mutate(A_tot = mean(c(A1,A2,A3,A4,A5), na.rm = TRUE),
         C_tot = mean(c(C1,C2,C3,C4,C5), na.rm = TRUE),
         E_tot = mean(c(E1,E2,E3,E4,E5), na.rm = TRUE),
         N_tot = mean(c(N1,N2,N3,N4,N5), na.rm = TRUE),
         O_tot = mean(c(O1,O2,O3,O4,O5), na.rm = TRUE)
  )

meansacross
#3. Keep just Big Five scores, gender, age, and education.
meansacross %>% 
  select(gender:O_tot)
#4. Summarize the mean, standard deviation, minimum, and maximum values for 
#the Big Five scores separately by gender groups.
bfi %>% 
  group_by(gender) %>% 
  summarize(across(c(A1,A2,A3,A4,A5,C1,C2,C3,C4,C5,E1,E2,E3,E4,E5,N1,N2,N3,N4,N5,O1,O2,O3,O4,O5)),
            list(mean = mean, SD = sd, max = max, min = min))
#5. Summarize the mean, standard deviation, minimum, and maximum values for 
#the Big Five scores separately by educational level groups.


