# Build Graphs;
# Scatterplot a:
# We see 56 labels, 50 states, 1 for DC and 5 represent the USA teritorys (Puerto Rico, the Virgin Island, the Mariana Islands, Guam, American Samoa) and a black diagonal line that represents the USA average. When 
# we see the line and the points we can detemine whether the state is above average or less than average with Corona patients. We see that New York (state), is an enormous outlier above the line, and that Florida, 
# Texas and California have a relative low amount of Corona cases.
graph_a_scatter_pop_conf_USA <- corona_usa_total_state %>% ggplot(aes(population_states_USA/1000000, confirmed_cases_USA, label = abbs_states_USA, color = region_USA)) + geom_label() + 
  xlab("Population in millions") + ylab("Positive Corona patiens USA") + geom_abline(intercept = 0, slope = confirmed_cases_total_USA/(population_USA/1000000))
graph_b_scatter_pop_death_USA <- corona_usa_total_state %>% ggplot(aes(population_states_USA/1000000, death_cases_USA, label = abbs_states_USA, color = region_USA)) + geom_label() + 
  xlab("Population in millions") + ylab("Deaths due to Corona USA") + geom_abline(intercept = 0, slope = death_cases_total_USA/(population_USA/1000000))

# Scatterplots of the positive Corona patients and the Corano related deaths. We make four scatterplots, for each one a cumulative and a normal scatterplot. When we see all four scatterplots we can conclude 
# that the USA is a heardly hit country and when other western countries are at the end of the Corona crisis the USA is in the middle of the crisis. In mid-june Europe opens the borders because it gets better
# (except the UK and Sweden).
graph_c_scatter_day_confcum_USA <- corona_usa_day_to_day %>% ggplot(aes(day, total_confirmed_cases_cum_USA)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
  geom_vline(xintercept = "04 01 2020", color = "red") + geom_vline(xintercept = "03 21 2020", color = "blue") + xlab("Day, first data march 4 2020") + 
  ylab("Cumulative number positive Corona patients USA")
graph_d_scatter_day_conf_USA <- corona_usa_day_to_day %>% ggplot(aes(day, total_new_confirmed_cases_USA)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
  geom_vline(xintercept = "04 04 2020", color = "red") + geom_hline(yintercept = 25000, color = "blue") + geom_vline(xintercept = "05 15 2020", color = "green") + 
  xlab("Day, first data march 4 2020") + ylab("New positive Corona patients USA")
graph_e_scatter_day_deathcum_USA <- corona_usa_day_to_day %>% ggplot(aes(day, total_death_cases_cum_USA)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) +
  geom_vline(xintercept = "03 24 2020", color = "red") + geom_vline(xintercept = "04 12 2020", color = "blue") + geom_vline(xintercept = "05 27 2020", color = "green") + 
  xlab("Day, first data march 4 2020") + ylab("Cumulative number of deaths USA")
graph_f_scatter_day_death_USA <- corona_usa_day_to_day %>% ggplot(aes(day, total_new_death_cases_USA)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
  geom_vline(xintercept = "04 07 2020", color = "red") + geom_vline(xintercept = "05 07 2020", color = "red") + xlab("Day, first data march 4 2020") + 
  ylab("New deaths due to Corona USA")
graph_g_scatter_pop_conf_NL <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, confirmed_cases_NL, label = province_NL, color = region_NL)) + geom_label() + 
  geom_abline(intercept = 0, slope = sum(confirmed_cases_NL)/sum(population_provices_NL))
graph_h_scatter_pop_death_NL <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, death_cases_NL, label = province_NL, color = region_NL)) + geom_label() +
  geom_abline(intercept = 0, slope = sum(death_cases_NL)/sum(population_provices_NL))
graph_i_scatter_pop_hosp_NL <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, hospital_cases_NL, label = province_NL, color = region_NL)) + geom_label() +
  geom_abline(intercept = 0, slope = sum(hospital_cases_NL)/sum(population_provices_NL))

# Scatterplot c:
# We see the cumulative confirmed positive Corona cases in the USA, and we see a blue and a red line. The blue line indicates 21 march and I plot it because on the left side there is not yet a Corona crisis 
# when you look at the graph. At the right side the cases are increasing exponential until the scatterplot crossed the red line. The period from the red line until today is a almost a constant line with about 
# 20 thousand new cases every day. Almost every other westers country has a more decreasing line compared to the cumulative positive cases line of the USA.

# Scatterplot d:
# We see the confirmed new positive Corona cases in the USA, and I programmed an extra line that seperates two periods. I think that the line the period that Trump's policy has no control on Corona on the side 
# seperates from the time that Trump's policy has effect on the right side. Also we see a blue line that represents the average (25000) amount of cases after the time that Trump's policy had effect. The last 
# extra line in the plot represent the switch from a decreasing line to an increasing line in mid may.

# Scatterplot e:
# We see the same plot as scatterplot c, but in stead of new positive cases, we see new deaths due to Corona. The data is again cumulative. The difference is that we see in the death plot an decreasing slope at
# the end. I am going to devide the plot into three periods, the time that the slope is exponential increasing, the almost constant slope and the decreasing slope. We see a red line, a blue line and a green line. 

# Scatterplot f:
# This plot is also the same plot, but we plot again in stead of the new positive Corona cases the deaths due to Corona. When we plot this one we see that the deaths are serious decreasing. So the Corona crisis 
# is when we look at the deaths per day much better than in the period from mid april to mid may (the red lines). When we look at the three periods that the two lines make than we see first an exponential growth, 
# then a period of maximums till almost 30000 cases per day, and the last period we see clearly a decreasing line with even though there are outliers, nowaday an average of about 6000 new deaths each day.

# Scatterplot g:
# Now we plot the confirmed positive Corona cases in the 12 Netherland's provinces against the population of that province. We draw a line that represents the average for the Netherlands. We see that the outliers,
# (Limburg and Noord-Brabant) are closer to the average when we compare it to the same plot for the USA, with outliers New Jersey and New York.

# Scatterplot h:
# We make the same plot but in stead of the confirmed cases we plot the deaths. There are not many changes, the only thing that changes a little bit is that the outliers become more outliers.

# Scatterplot i:
# This scatterplot is again the same plot as g, h, but this time we use the hospital cases instead of the positive cases in plot g, and the deaths due to Corona in plot h. Again we see that Limburg and Noord Brabant 
# are the outliers when it comes to the Corona data. The other provinces are located around the 'average line'. The smaller provinces are also located the same.  


