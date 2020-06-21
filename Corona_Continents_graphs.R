library(tidyverse)

corona_continents_scatter_pop_death <- corona_continents_regions %>% ggplot(aes(Population/10^6, Death_cases/10^3, label = Abb_region, color = Reliability_test_capacity)) + 
  geom_abline(intercept = 0, slope = sum(Death_cases/10^3)/sum(Population/10^6)) + geom_label_repel() + geom_point() +  
  ggtitle("Amount of confirmed cases around the world and the 'average line'") + xlab("Population * 1.000.000") + ylab("Deaths * 1.000")

corona_continents_scatter_pop_death_log10 <- corona_continents_regions %>% ggplot(aes(Population/10^6, Death_cases/10^3, label = Abb_region)) + 
  geom_smooth(method = "lm") + geom_label_repel() + geom_point() +  scale_x_log10() + ggtitle("Amount of confirmed cases around the world with the population in log 10, and the 'normal area'") +
  xlab("Population * 1.000.000, in log 10 scale") + ylab("Deaths * 1.000")

corona_continents_scatter_pop_conf <- corona_continents_regions %>% ggplot(aes(Population, Confirmed_cases, label = Abb_region, color = Reliability_test_capacity)) + 
  geom_label() + geom_abline(intercept = 0, slope = sum(Death_cases)/sum(Population))

 #corona_continents__scatter_pop_conf_log10 <- corona_continents_regions %>% ggplot(aes(Population, Confirmed_cases, label = Abb_region, color = Reliability_test_capacity)) + 
  #geom_label() + geom_abline(intercept = 0, slope = sum(Death_cases)/sum(Population))

corona_continents_scatter_pop_conf_western <- corona_western_countries %>% ggplot(aes(western_countries_pop, western_countries_confirmed, label = western_countries)) + 
  geom_label() + geom_smooth() + geom_abline(intercept = 0, slope = sum(western_countries_confirmed)/sum(western_countries_pop))

#corona_continents_scatter_pop_conf_western_log10 <- corona_western_countries %>% ggplot(aes(western_countries_pop, western_countries_confirmed, label = western_countries)) + 
 # geom_label() + geom_smooth() + geom_abline(intercept = 0, slope = sum(western_countries_confirmed)/sum(western_countries_pop))

corona_continents_scatter_pop_death_western <- corona_western_countries %>% ggplot(aes(western_countries_pop, western_countries_confirmed, label = western_countries)) 
  