#+ Final Week
#+ 4/22
#+ GitHub

# Intro ------------------------------------------
library(tidyverse)
library(knitr)
library(kableExtra)

load('SDI.RData')

# Pick a Region ---------------------------------
df <- data_sdi |>
  filter(region_name == 'CENTRO')

# Graph democracy by region over time -------------------------
df |>
  ggplot(aes(x = year, y = SUR_index_sub_exe, color = state_name)) +
  geom_line() +
  labs(
    x = 'Year',
    y = 'Level of Democracy',
    color = 'State'
  ) +
theme_classic()
  