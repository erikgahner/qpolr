# Download Stata file at: http://www.europeansocialsurvey.org/download.html?file=ESS8GB&c=GB&y=2016

library("rio")
library("tidyverse")

ess <- import("ESS8GB.dta")

ess.limited <- ess %>% 
  mutate(male = (gndr - 2)*-1,
         polintr = (polintr - 5)*-1) %>%
  rename(age = agea, income = hinctnta) %>%
  select(male, age, income, lrscale, polintr, trstplt) 

ess.limited$lrscale <- ifelse(ess.limited$lrscale > 10, NA, ess.limited$lrscale)
ess.limited$age <- ifelse(ess.limited$age == 999, NA, ess.limited$age)
ess.limited$trstplt <- ifelse(ess.limited$trstplt > 10, NA, ess.limited$trstplt)
ess.limited$income <- ifelse(ess.limited$income > 10, NA, ess.limited$income)

export(ess.limited, "ess_uk.csv")
