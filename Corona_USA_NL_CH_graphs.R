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
  corona_usa_nl_ch_line_day_conf_facet <- testing_DB %>% ggplot(aes(testing_facet_days, testing_facet_amount_cases, group = 1)) + theme_bw() + geom_line(color = "blue") + 
    facet_grid(testing_facet_country ~ testing_facet_cases) + theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust = 1)) + scale_y_continuous(trans = "log10") + 
    scale_x_discrete(breaks = some_days_test_db, labels = some_days_test_db) + xlab("Days, notation month-day-year (01 18 2020 is january 18 2020)") + 
    ylab("Amount of cases, log 10 scale") + ggtitle("4 plots that gives information to compare, note that the Y-axis is in log 10") 
    
  corona_usa_nl_ch_line_day_conf <- db_test1000 %>% filter(testing_sort_case == "Confirmed") %>% ggplot(aes(testing_facet_days, testing_facet_conf1, group = Country_test)) + 
    scale_y_log10() + theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust = 1)) + scale_x_discrete(breaks = testing_some_days, labels = testing_some_days) + 
    geom_vline(xintercept = "01 18 2020", color = "gray") + geom_vline(xintercept = "01 28 2020", color = "gray") + geom_vline(xintercept = "02 07 2020", color = "gray") + 
    geom_vline(xintercept = "02 17 2020", color = "gray") + geom_vline(xintercept = "02 27 2020", color = "gray") + geom_vline(xintercept = "03 08 2020", color = "gray") + 
    geom_vline(xintercept = "03 18 2020", color = "gray") + geom_vline(xintercept = "03 28 2020", color = "gray") + geom_vline(xintercept = "04 07 2020", color = "gray") + 
    geom_vline(xintercept = "04 17 2020", color = "gray") + geom_vline(xintercept = "04 27 2020", color = "gray") + geom_vline(xintercept = "05 07 2020", color = "gray") + 
    geom_vline(xintercept = "05 17 2020", color = "gray") + geom_vline(xintercept = "05 27 2020", color = "gray") + geom_vline(xintercept = "06 06 2020", color = "gray") + 
    geom_vline(xintercept = "06 16 2020", color = "gray") + geom_line(aes(color = Country_test)) + 
    theme(legend.position = c(0.09, 0.20), legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", color = "darkblue")) + 
    ylab("Cases confirmed * 1.000, log 10 scale") + xlab("Days, notation month-day-year (03-04-2020 is march 4 2020)") + 
    ggtitle("New confirmed cases in China, the USA and in The Netherlands")
  
  corona_usa_nl_ch_line_day_deaths <- db_test1000 %>% filter(testing_sort_case == "Deaths") %>% ggplot(aes(testing_facet_days, testing_facet_conf1, group = Country_test)) + 
    scale_y_log10() + theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust = 1)) + scale_x_discrete(breaks = testing_some_days, labels = testing_some_days) + 
    geom_vline(xintercept = "01 18 2020", color = "gray") + geom_vline(xintercept = "01 28 2020", color = "gray") + geom_vline(xintercept = "02 07 2020", color = "gray") + 
    geom_vline(xintercept = "02 17 2020", color = "gray") + geom_vline(xintercept = "02 27 2020", color = "gray") + geom_vline(xintercept = "03 08 2020", color = "gray") + 
    geom_vline(xintercept = "03 18 2020", color = "gray") + geom_vline(xintercept = "03 28 2020", color = "gray") + geom_vline(xintercept = "04 07 2020", color = "gray") + 
    geom_vline(xintercept = "04 17 2020", color = "gray") + geom_vline(xintercept = "04 27 2020", color = "gray") + geom_vline(xintercept = "05 07 2020", color = "gray") + 
    geom_vline(xintercept = "05 17 2020", color = "gray") + geom_vline(xintercept = "05 27 2020", color = "gray") + geom_vline(xintercept = "06 06 2020", color = "gray") + 
    geom_vline(xintercept = "06 16 2020", color = "gray") + geom_line(aes(color = Country_test))  + 
    theme(legend.position = c(0.09, 0.81), legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", color = "darkblue")) + 
    ylab("Cases confirmed * 1.000, log 10 scale") + xlab("Days, notation month-day-year (03-04-2020 is march 4 2020)") + 
    ggtitle("New confirmed cases in the USA and in The Netherlands") 
  
  corona_usa_nl_ch_line_day_confcum <- db_test1000 %>% filter(testing_sort_case == "Confirmed") %>%
    ggplot(aes(testing_facet_days, testing_cum1/100, group = Country_test)) + scale_y_log10() + theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust = 1)) + 
    scale_x_discrete(breaks = testing_some_days, labels = testing_some_days) + geom_vline(xintercept = "01 18 2020", color = "gray") + 
    geom_vline(xintercept = "01 28 2020", color = "gray") + geom_vline(xintercept = "02 07 2020", color = "gray") + geom_vline(xintercept = "02 17 2020", color = "gray") + 
    geom_vline(xintercept = "02 27 2020", color = "gray") + geom_vline(xintercept = "03 08 2020", color = "gray") + geom_vline(xintercept = "03 18 2020", color = "gray") + 
    geom_vline(xintercept = "03 28 2020", color = "gray") + geom_vline(xintercept = "04 07 2020", color = "gray") + geom_vline(xintercept = "04 17 2020", color = "gray") + 
    geom_vline(xintercept = "04 27 2020", color = "gray") + geom_vline(xintercept = "05 07 2020", color = "gray") + geom_vline(xintercept = "05 17 2020", color = "gray") + 
    geom_vline(xintercept = "05 27 2020", color = "gray") + geom_vline(xintercept = "06 06 2020", color = "gray") + geom_vline(xintercept = "06 16 2020", color = "gray") + 
    geom_line(aes(color = Country_test))  + 
    theme(legend.position = c(0.91, 0.20), legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", color = "darkblue")) + 
    ylab("Cases confirmed * 100, log 10 scale") + xlab("Days, notation month-day-year (03-04-2020 is march 4 2020)") + 
    ggtitle("Cumulative amount of Corona patients in China, the USA and The Netherlands")
  
  corona_usa_nl_ch_line_day_deathcum <- db_test1000 %>% filter(testing_sort_case == "Deaths") %>%
    ggplot(aes(testing_facet_days, testing_cum1/ 10, group = Country_test)) + scale_y_log10() + theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust = 1)) + 
    scale_x_discrete(breaks = testing_some_days, labels = testing_some_days) + geom_vline(xintercept = "01 18 2020", color = "gray") + 
    geom_vline(xintercept = "01 28 2020", color = "gray") + geom_vline(xintercept = "02 07 2020", color = "gray") + geom_vline(xintercept = "02 17 2020", color = "gray") + 
    geom_vline(xintercept = "02 27 2020", color = "gray") + geom_vline(xintercept = "03 08 2020", color = "gray") + geom_vline(xintercept = "03 18 2020", color = "gray") + 
    geom_vline(xintercept = "03 28 2020", color = "gray") + geom_vline(xintercept = "04 07 2020", color = "gray") + geom_vline(xintercept = "04 17 2020", color = "gray") + 
    geom_vline(xintercept = "04 27 2020", color = "gray") + geom_vline(xintercept = "05 07 2020", color = "gray") + geom_vline(xintercept = "05 17 2020", color = "gray") + 
    geom_vline(xintercept = "05 27 2020", color = "gray") + geom_vline(xintercept = "06 06 2020", color = "gray") + geom_vline(xintercept = "06 16 2020", color = "gray") + 
    geom_line(aes(color = Country_test))  + 
    theme(legend.position = c(0.91, 0.20), legend.background = element_rect(fill = "lightblue", size = 0.5, linetype = "solid", color = "darkblue")) + 
    ylab("Death cases * 10, log 10 scale") + xlab("Days, notation month-day-year (03-04-2020 is march 4 2020)") + 
    ggtitle("Cumulative amount of Corona deaths in China, the USA and The Netherlands") 
  
  
  corona_usa_nl_ch_table_region_state <- kable(cbind(corona_usa_total_state[order(alphabetic_usa),] %>% 
                                                       select (State = state_USA, Region = region_USA, Abbreviation = abbs_states_USA))) %>% 
    kable_styling("striped", "bordered") %>% scroll_box(width = "100%", height = "200px")
 
  corona_usa_nl_ch_scatter_pop_conf_states_usa <- corona_usa_total_state %>% ggplot(aes(population_states_USA/10^6, confirmed_cases_USA/10^3, label = abbs_states_USA)) + 
    geom_label_repel(aes(color = region_USA)) + geom_point(aes(color = region_USA)) + geom_smooth(method = "lm") + 
    ggtitle("Figure a; Corona patients in the 50 states, DC and the American Territories") + ylab("Confirmed cases * 1.000") + xlab("Population of the state * 1.000.000")  + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions in the USA: ")

  
  corona_usa_nl_ch_scatter_pop_conf_states_usa_log10 <- corona_usa_total_state %>% ggplot(aes(population_states_USA/10^6, confirmed_cases_USA/10^3, label = abbs_states_USA)) + 
    geom_smooth(method = "gam") + geom_label_repel(aes(color = region_USA)) + geom_point(aes( color = region_USA)) + 
    ggtitle("Figure b; Corona patients in the 50 states, DC and the American Territories") + ylab("Confirmed cases * 1.000") + xlab("Population of the state * 1.000.000, log 10 scale") + 
    scale_x_continuous(trans = "log10") + theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + 
    labs(color = "Regions the USA: ")
  
  corona_usa_nl_ch_scatter_pop_death_states_usa <- corona_usa_total_state %>% ggplot(aes(population_states_USA/10^6, death_cases_USA, label = abbs_states_USA)) + 
    geom_smooth(method = "lm")+ geom_label_repel(aes(color = region_USA)) + geom_point(aes(color = region_USA)) + 
    ggtitle("Figure C; Deaths due to Corona in the 50 states, DC and the American Territories") + ylab("Death cases") + xlab("Population of the state * 1.000.000") + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions in the USA: ")

  corona_usa_nl_ch_scatter_pop_death_states_usa_log10 <- corona_usa_total_state %>% ggplot(aes(population_states_USA/10^6, death_cases_USA, label = abbs_states_USA)) + 
    geom_smooth(method = "gam") +  geom_label_repel(aes(color = region_USA)) + geom_point(aes(color = region_USA)) + 
    ggtitle("Figure D; Deaths due to Corona in the 50 states, DC and the American Territories") + ylab("Death cases") + xlab("Population of the state * 1.000.000, log 10 scale") + 
    scale_x_continuous(trans = "log10") + theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + 
    labs(color = "Regions in the USA: ")

  corona_usa_nl_ch_scatter_pop_conf_prov_nl <- corona_nl_total_province %>% ggplot(aes(population_provices_NL/10^6, confirmed_cases_NL, label = province_nl)) + geom_smooth(method = "lm") + 
    geom_label_repel(aes(color = region_nl)) + geom_point(aes(color = region_nl)) + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions The Netherlands: ") + 
    ylab("Confirmed cases") + xlab("Population of the provice * 1.000.000") + ggtitle("Figure E; Corona patients in the 12 provinces in The Netherlands")

  
  corona_usa_nl_ch_scatter_pop_conf_prov_nl_log10 <- corona_nl_total_province %>% ggplot(aes(population_provices_NL/10^6, confirmed_cases_NL, label = province_nl)) + geom_smooth(method = "gam") + 
    geom_label_repel(aes(color = region_nl)) + geom_point(aes(color = region_nl)) + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions The Netherlands: ") + 
    ylab("Confirmed cases") + xlab("Population of the provice * 1.000.000, log 10 scale") + ggtitle("Figure F; Corona patients in the 12 provinces in The Netherlands") + scale_x_log10()

  corona_usa_nl_ch_scatter_pop_death_prov_nl <- corona_nl_total_province %>% ggplot(aes(population_provices_NL/10^6, death_cases_NL, label = province_nl)) + geom_smooth(method = "lm") + 
    geom_label_repel(aes(color = region_nl)) + geom_point(aes(color = region_nl)) + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions The Netherlands: ") + 
    ylab("Death cases") + xlab("Population of the provice * 1.000.000") + ggtitle("Figure G; Deaths due to Corona in the 12 provinces in The Netherlands")

  corona_usa_nl_ch_scatter_pop_death_prov_nl_log10 <- corona_nl_total_province %>% ggplot(aes(population_provices_NL/10^6, death_cases_NL, label = province_nl)) + geom_smooth(method = "gam") + 
    geom_label_repel(aes(color = region_nl)) + geom_point(aes(color = region_nl)) + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions The Netherlands: ") + 
    ylab("Death cases") + xlab("Population of the provice * 1.000.000, log 10 scale") + ggtitle("Figure H; Deaths due to Corona in the 12 provinces in The Netherlands") + scale_x_log10()

  corona_usa_nl_ch_scatter_pop_hosp_prov_nl <- corona_nl_total_province %>% ggplot(aes(population_provices_NL/10^6, hospital_cases_NL, label = province_nl)) + geom_smooth(method = "lm") + 
    geom_label_repel(aes(color = region_nl)) + geom_point(aes(color = region_nl)) + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions The Netherlands: ") + 
    ylab("Hospital cases") + xlab("Population of the provice * 1.000.000") + ggtitle("Figure I; Hospital cases (IC's) in the 12 provinces in The Netherlands")

  corona_usa_nl_ch_scatter_pop_hosp_prov_nl_log10 <- corona_nl_total_province %>% ggplot(aes(population_provices_NL/10^6, hospital_cases_NL, label = province_nl)) + geom_smooth(method = "gam") + 
    geom_label_repel(aes(color = region_nl)) + geom_point(aes(color = region_nl)) + 
    theme(legend.position = "right", legend.background = element_rect(fill="lightblue", size=0.5, linetype = "solid", color = "darkblue")) + labs(color = "Regions The Netherlands: ") + 
    ylab("Hospital cases") + xlab("Population of the provice * 1.000.000, log 10 scale") + ggtitle("Figure J; Hospital cases (IC's) in the 12 provinces in The Netherlands") + scale_x_log10()

  corona_usa_nl_ch_dens_conf_dens_2overlapping <- corona_distribution_conf %>% 
    ggplot(aes(c.confirmed_cases_provinces_nl.population_provinces_nl..confirmed_cases_states_usa.population_states_usa., fill = c..The.Netherlands....The.Netherlands....The.Netherlands....The.Netherlands...)) + 
    geom_density(alpha = 0.6) + theme_replace() + xlab("Confirmed cases rate") + ylab("Density cases") +  ggtitle("Figure K; Confirmed cases rate distribution for the USA and NL") + 
    theme(legend.title = element_blank(), legend.position = c(0.75, 0.86), legend.background = element_rect(fill = "white", size = 0.5, linetype = "solid", color = "black")) + geom_vline(xintercept = 0) + 
    geom_hline(yintercept = 0) + geom_vline(aes(xintercept = mean(corona_distribution_conf_nl$c.confirmed_cases_provinces_nl.population_provinces_nl.)), color = "red") + 
    geom_vline(aes(xintercept = mean(corona_distribution_conf_usa$c.confirmed_cases_states_usa.population_states_usa.)), color = "blue")
    
  corona_usa_nl_ch_dens_death_dens_2overlapping <- corona_distribution_conf %>% 
      ggplot(aes(c.death_cases_provinces_nl.population_provinces_nl..death_cases_states_usa.population_states_usa., fill = c..The.Netherlands....The.Netherlands....The.Netherlands....The.Netherlands...)) + 
      geom_density(alpha = 0.6) + theme_replace() + xlab("Confirmed cases rate") + ylab("Density cases") +  ggtitle("Figure L; Death cases rate distribution for the USA and NL") + 
      theme(legend.title = element_blank(), legend.position = c(0.75, 0.86), legend.background = element_rect(fill = "white", size = 0.5, linetype = "solid", color = "black")) + geom_vline(xintercept = 0) + 
      geom_hline(yintercept = 0) + geom_vline(aes(xintercept = mean(corona_distribution_conf_nl$c.death_cases_provinces_nl.population_provinces_nl.)), color = "red") + 
      geom_vline(aes(xintercept = mean(corona_distribution_conf_usa$c.death_cases_states_usa.population_states_usa.)), color = "blue")
    
