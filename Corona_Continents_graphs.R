library(tidyverse)

graph_a_pop_cases_continent <- corona_continents_regions %>% ggplot(aes(Population, Death_cases, label = Abb_region, color = Reliability_test_capacity)) + 
  geom_label() + geom_abline(intercept = 0, slope = sum(Death_cases)/sum(Population))


