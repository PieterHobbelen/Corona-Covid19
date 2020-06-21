# We have two sort of figures; the state-related figures and the time-related figures.
  # Here are the state-related figures, first with a continious x-scale and the last ones with an log base 10 x-scale
  corona_usa_nl_scatter_pop_conf_usa <- corona_usa_total_state %>% ggplot(aes(population_states_USA/1000000, confirmed_cases_USA, label = abbs_states_USA, color = region_USA)) + 
    geom_label() + xlab("Population in millions") + ylab("Positive Corona patiens USA") + geom_abline(intercept = 0, slope = confirmed_cases_total_USA/(population_USA/1000000))
  corona_usa_nl_scatter_pop_death_usa <- corona_usa_total_state %>% ggplot(aes(population_states_USA/1000000, death_cases_USA, label = abbs_states_USA, color = region_USA)) + 
    geom_label() + xlab("Population in millions") + ylab("Deaths due to Corona USA") + geom_abline(intercept = 0, slope = death_cases_total_USA/(population_USA/1000000))
  corona_usa_nl_scatter_pop_conf_nl <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, confirmed_cases_NL, label = province_NL, color = region_NL)) + geom_label() + 
    geom_abline(intercept = 0, slope = sum(confirmed_cases_NL)/sum(population_provices_NL))
  corona_usa_nl_scatter_pop_death_nl <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, death_cases_NL, label = province_NL, color = region_NL)) + geom_label() +
    geom_abline(intercept = 0, slope = sum(death_cases_NL)/sum(population_provices_NL))
  corona_usa_nl_scatter_pop_hosp_nl <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, hospital_cases_NL, label = province_NL, color = region_NL)) + geom_label() +
    geom_abline(intercept = 0, slope = sum(hospital_cases_NL)/sum(population_provices_NL))
  corona_usa_nl_scatter_pop_conf_usa_log10 <- corona_usa_total_state %>% ggplot(aes(population_states_USA/1000000, confirmed_cases_USA, label = abbs_states_USA)) + geom_smooth(method = "lm") + 
    geom_label_repel() + xlab("Population in millions") + ylab("Positive Corona patiens USA") + geom_abline(intercept = 0, slope = confirmed_cases_total_USA/(population_USA/1000000)) + 
    scale_x_log10()
  corona_usa_nl_scatter_pop_death_usa_log10 <- corona_usa_total_state %>% ggplot(aes(population_states_USA/1000000, death_cases_USA, label = abbs_states_USA, color = region_USA)) + 
    geom_label() + xlab("Population in millions") + ylab("Deaths due to Corona USA") + geom_abline(intercept = 0, slope = death_cases_total_USA/(population_USA/1000000)) + 
    scale_x_log10()
  corona_usa_nl_scatter_pop_conf_nl_log10 <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, confirmed_cases_NL, label = province_NL)) + geom_smooth(method = "lm") + 
    geom_label_repel() + geom_point() + scale_x_log10()
  corona_usa_nl_scatter_pop_death_nl_log10 <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, death_cases_NL, label = province_NL)) + geom_smooth(method = "lm") + 
    geom_label_repel() + geom_point() + scale_x_log10()
  corona_usa_nl_scatter_pop_hosp_nl_log10 <- corona_nl_total_province %>% ggplot(aes(population_provices_NL, hospital_cases_NL, label = province_NL)) + geom_smooth(method = "lm") + 
    geom_label_repel() + geom_point() + scale_x_log10()

  # Here are the time-related figures, the first data is in the USA published on march 4, in the NL on march 6. The USA published data about confirmed and death cases, 
  # the NL published also the hospital/IC cases.
  corona_usa_nl_scatterline_day_conf_usa_cumulative <- corona_usa_day_to_day %>% ggplot(aes(day, total_confirmed_cases_cum_USA)) + geom_point() + 
    theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = "04 01 2020", color = "red") + geom_vline(xintercept = "03 21 2020", color = "blue") + 
    xlab("Day, first data march 4 2020") + ylab("Cumulative number positive Corona patients USA")
  corona_usa_nl_scatterline_day_conf_usa_new <- corona_usa_day_to_day %>% ggplot(aes(day, total_new_confirmed_cases_USA)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
    geom_vline(xintercept = "04 04 2020", color = "red") + geom_hline(yintercept = 25000, color = "blue") + geom_vline(xintercept = "05 15 2020", color = "green") + 
    xlab("Day, first data march 4 2020") + ylab("New positive Corona patients USA")
  corona_usa_nl_scatterline_day_death_usa_cumulative <- corona_usa_day_to_day %>% ggplot(aes(day, total_death_cases_cum_USA)) + geom_point() + 
    theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = "03 24 2020", color = "red") + geom_vline(xintercept = "04 12 2020", color = "blue") + 
    geom_vline(xintercept = "05 27 2020", color = "green") + xlab("Day, first data march 4 2020") + ylab("Cumulative number of deaths USA")
  corona_usa_nl_scatterline_day_conf_usa_new <- corona_usa_day_to_day %>% ggplot(aes(day, total_new_death_cases_USA)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
    geom_vline(xintercept = "04 07 2020", color = "red") + geom_vline(xintercept = "05 07 2020", color = "red") + xlab("Day, first data march 4 2020") + 
    ylab("New deaths due to Corona USA")
  corona_usa_nl_scatterline_day_conf_nl_cumulative <- corona_usa_day_to_day %>% ggplot(aes(day, total_confirmed_cases_cum_NL)) + geom_point() + 
    theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = "04 01 2020", color = "red") + geom_vline(xintercept = "03 21 2020", color = "blue") + 
    xlab("Day, first data march 4 2020") + ylab("Cumulative number positive Corona patients USA")
  corona_usa_nl_scatterline_day_conf_nl_new <- corona_usa_day_to_day %>% ggplot(aes(day, total_new_confirmed_cases_NL)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
    geom_vline(xintercept = "04 04 2020", color = "red") + geom_hline(yintercept = 25000, color = "blue") + geom_vline(xintercept = "05 15 2020", color = "green") + 
    xlab("Day, first data march 4 2020") + ylab("New positive Corona patients USA")
  corona_usa_nl_scatterline_day_death_nl_cumulative <- corona_usa_day_to_day %>% ggplot(aes(day, total_death_cases_cum_NL)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) +
    geom_vline(xintercept = "03 24 2020", color = "red") + geom_vline(xintercept = "04 12 2020", color = "blue") + geom_vline(xintercept = "05 27 2020", color = "green") + 
    xlab("Day, first data march 4 2020") + ylab("Cumulative number of deaths USA")
  corona_usa_nl_scatterline_day_conf_nl_new <- corona_usa_day_to_day %>% ggplot(aes(day, total_new_death_cases_NL)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
    geom_vline(xintercept = "04 07 2020", color = "red") + geom_vline(xintercept = "05 07 2020", color = "red") + xlab("Day, first data march 4 2020") + 
    ylab("New deaths due to Corona USA")
  corona_usa_nl_scatterline_day_hosp_nl_cumulative <- corona_usa_day_to_day %>% ggplot(aes(day, total_hosp_cases_cum_NL)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) +
    geom_vline(xintercept = "03 24 2020", color = "red") + geom_vline(xintercept = "04 12 2020", color = "blue") + geom_vline(xintercept = "05 27 2020", color = "green") + 
    xlab("Day, first data march 4 2020") + ylab("Cumulative number of deaths USA")
  corona_usa_nl_scatterline_day_hosp_nl_new <- corona_usa_day_to_day %>% ggplot(aes(day, total_new_hosp_cases_NL)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + 
    geom_vline(xintercept = "04 07 2020", color = "red") + geom_vline(xintercept = "05 07 2020", color = "red") + xlab("Day, first data march 4 2020") + 
    ylab("New deaths due to Corona USA")
  
  
