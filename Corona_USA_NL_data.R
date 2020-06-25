
# Build databases step 1:
# First I add all the data that I want to use for the plots. I'm going to make plots that sort the data by location. So I need the states, and their region, and to read the labels we put instead of the whole state-name 
# the abbreviation of two characters. In the database are also territories of the USA, and they don't have an existing abbreviation. So I modified the names and left some terms out, for example Puerto Rico is P. Rico 
# and the Northern Mariana Island are the N. Marianas.


  # The state_USA is a vector with 56 terms, the 50 states and DC, and the US territories (Guam, Puerto Rico, American Samoa, the Northern Mariana Island and the US Virgin Island).
  state_USA <- c("New York", "New Jersey", "California", "Illinois", "Massachusetts", "Texas", "Pennsylvania", "Florida", "Michigan", "Maryland", "Georgia", "Virginia", "Louisiana", "Connecticut", 
               "North Carolina", "Ohio", "Indiana", "Arizona", "Tennessee", "Minnesota", "Colorado", "Alabama", "Washington", "Iowa", "Wisconsin", "South Carolina", "Missisipi", "Nebraska", 
               "Rhode Island", "Missouri", "Utah", "Kentucky", "Arkansas", "Kansas", "Nevada", "Delaware", "New Mexico", "District of Columbia", "Oklahoma", "South Dakota", "Puerto Rico", 
               "Oregon", "New Hampshire", "Idaho", "North Dakota", "Maine", "West Virginia", "Vermont", "Wyoming", "Hawaï", "Alaska", "Montana", "Guam", "US Virgin Islands", 
               "Northern Mariana Islands", "American Samoa")

  # The region_USA is a vector with agian 56 terms, that located every state in a region. The possible region an the mainland are the North East, South East, North Mid, Mid, South Mid, North West, South West. The other region
  # on the mainland is the Region Alaska, because Alaska is a state that is not near another state on the mainland. The territories are devided in the regions Atlantic Island and Pacific Island.
  region_USA <- c("North East", "North East", "South West", "Mid", "North East", "South Mid", "North East", "South East", "North Mid", "North East", "South East", "North East", "South Mid", "North East", 
                "South East", "North East", "North East", "South West", "South East", "North Mid", "South Mid", "South East", "North West", "Mid", "North Mid", "South East", "South East", "Mid", 
                "North East", "Mid", "South West", "North East", "South Mid", "Mid", "South West", "North East", "South Mid", "North East", "South Mid", "North Mid", "Region Atlantic Island", 
                "North West", "North East", "North West", "North Mid", "North East", "North East", "North East", "North Mid", "Region Pacific Island", "Region Alaska", "North West", "Region Atlantic Island", 
                "Region Pacific Island", "Region Atlantic Island", "Region Pacific Island")
  
  # The region abbs_states_USA is a vector with again 56 terms, and add the abbreviation to the state and DC, the territories are the names off the territories shortened.
  abbs_states_USA <- c("NY", "NJ", "CA", "IL", "MA", "TX", "PA", "FL", "MI", "MD", "GA", "VA", "LA", "CT", "NC", "OH", "IN", "AZ", "TN", "MN", "CO", "AL", "WA", "IA", "WI", "SC", "MS", "NE", "RI", "MO", "UT", "KY", "AR", 
                     "KS", "NV", "DE", "NM", "DC", "OK", "SD", "P. Rico", "OR", "NH", "ID", "ND", "ME", "WV", "VT", "WY", "HI", "AK", "MT", "Guam", "Virgin", "N. Marianas", "Samoa")


# Now we are going to add the Corona data to the states, for the USA we have data about the confirmed cases per state (positive Corona patients), the recovered cases per state, and the deaths per state due to Corona. All the
# states provide data about the confirmed cases and the deaths, but some states have no available data about recovered Corona patients. The NA-values in the vector recovered_cases_USA indicate that states.
  
  # Confirmed_cases_USA represents the data of the states and the territories about the amount of positive Corona cases.
  confirmed_cases_USA <- c(384000, 167000, 151000, 134000, 105000, 87854, 77999, 75568, 65672, 60613, 57681, 53211, 46619, 44461, 44119, 40424, 39146, 35691, 30432, 29795, 28822, 25615, 25171,
                         23350, 22932, 18795, 18483, 16315, 15947, 15585, 13577, 11945, 11547, 11419, 10678, 10173, 9845, 9654, 7848, 5742, 5536, 5377, 5209, 3353, 3016, 2721, 2233, 1119, 1027,
                         728, 625, 573, 185, 72, 30, 0)
  
  # Confirmed_cases_USA represents the data of the states and the territories about the amount of recovered Corona cases. Some states provide no data about the recovered Corona cases, the NA-values are the states without 
  # recovery-data.
  recovered_cases_USA <- c(NA, NA, NA, NA, 84621, 58341, 56939, NA, 42041, NA, NA, NA, 33904, NA, 23653, NA, NA, NA, 19896, NA, NA, 13508, NA, 14265, 16837, 8682, 13356, 9229, NA, NA, 7935, 3379, 7351,
                         NA, NA, 6062, 4160, 1143, 6391, 4755, NA, 2396, 3665, 2684, 2573, 2105, 1553, 907, 815, 629, 403, 489, 169, 64, 13, NA)
  
  # Confirmed_cases_USA represents the data of the states and the territories about the amount of deaths due to Corona. This is more complicated as the amount of positive cases, because you will never know the real cause 
  # of death. For example, when is a death a death due to Corona and not a normal death? In The Netherlands the RIVM (the official publisher of Corona data) determined the Corona deaths by using the 'excess mortality'. 
  # The 'excess mortality' is how many extra people died in this Corona period compared to a year without Corona. But it is complicated to count the amount of Corona-deaths. The data below is according to Google, Google 
  # used Wikipedia to determine and publish the data.
  death_cases_USA <- c(24579, 12676, 5089, 6507, 7538, 1976, 6162, 2931, 5990, 2900, 2451, 1534, 3014, 4146, 1109, 2508, 2396, 1188, 475, 1305, 1595, 773, 1204, 644, 694, 600, 868, 212, 833, 872, 139, 
                     493, 171, 245, 462, 414, 440, 506, 359, 74, 146, 173, 308, 87, 74, 100, 86, 55, 18, 17, 12, 18, 5, 6, 2, 0)

  # When we want to compare the data we need to consider how many persons live in the states, for example in California live almost 40 million persons and in the American territory American Samoa about 0.5 million. So to
  # compare the states we need to convert the data into rates by devide the cases by the population. We determine the rate later, but the population necessary to determine the rate is stored in this vector.
  population_states_USA <- c(19450000, 8882000, 39510000, 12670000, 6893000, 29000000, 12800000, 21480000, 9987000, 6046000, 10620000, 8536000, 4649000, 3565000, 10490000, 11690000, 6732000, 7279000, 6829000, 
                           5640000, 5759000, 4903000, 7615000, 3155000, 5822000, 5149000, 2976000, 1934000, 1059000, 6137000, 3206000, 4468000, 3018000, 2913000, 3080000, 973764, 2097000, 705749, 3957000, 
                           884659, 3194000, 4218000, 1360000, 1787000, 762062, 1344000, 1792000, 623989, 578759, 1416000, 731545, 1069000, 165768, 106977, 56882, 55465)

  # We see 3 rows below; The first one calculates and contains the total population off the United States and the US territories. The second one calculates the total positive Corona patients in the USA and the third one the 
  # total deaths in the USA.
  population_USA <- sum(population_states_USA)
  confirmed_cases_total_USA <- sum(confirmed_cases_USA)
  death_cases_total_USA <- sum(death_cases_USA)
  
  # Now we must determine the rate if we want to compare the states. When we devide the cases (positive test or deaths) by the population we can compare the states because we will get a ratio.
  confirmed_rate_thousand_states_USA <- confirmed_cases_USA / (population_states_USA / 10^4)
  death_rate_million_states_USA <- death_cases_USA / (population_states_USA / 10^6)
  
# I want to compare the USA with a western country, and maybe later add the data of other countries. But now I add the data of my country, The Netherlands. So I am going to add again the province, the region, an abbreviation 
# is not necessary because there are only 12 provinces so you can read the labels when you see the whole name, the population, the confirmed cases, the Netherlands has data about hospital cases so also the hospital cases and
# the deaths due to Corona.
  
  # First the 12 provinces, the 'special communities' in the Caribbean Saba, Bonaire and Sint Eustatius are not in the dataset because the testing capacity is different compared to the mainland of The Netherlands so I think 
  # that you can not compare Caribbean Netherlands with the normal provinces.
  province_NL <- c("Groningen", "Friesland", "Drenthe", "Overijsel", "Flevoland", "Gelderland", "Utrecht", "Noord-Holland", "Zuid-Holland", "Zeeland", "Noord-Brabant", "Limburg")

  # I devided the 12 provinces in 3 regions, North, Mid and South.
  region_NL <- c("North", "North", "North", "Mid", "Mid", "Mid", "Mid", "North", "Mid", "South", "South", "South")

  # In this vector we see the population of the 12 provinces in june 2020.
  population_provices_NL <-  c(583990, 647672, 492167, 1156431, 416546, 2071972, 1342158, 2853359, 3673893, 383032, 2544806, 1116137)

  # This vector contains the positive Corona cases per province, we had the same vector for the USA. 
  confirmed_cases_NL <- c(358, 632, 533, 3059, 969, 6476, 3929, 7119, 10907, 728, 9637, 4857)

  # This vector contains the hospital Corona cases, so the Corona cases on the IC per province.
  hospital_cases_NL <- c(75, 131, 116, 549, 268, 1510, 880, 1642, 2172, 152, 2774, 1567)

  # This vector is again the same vector as the vector for the USA about the deaths due to Corona, but now for The Netherlands. Again, it's complicated to measure the amount of deaths due to Corona, because you can not be 100 percent 
  # sure the the cause of death is Corona.
  death_cases_NL <- c(17, 65, 40, 309, 91, 680, 424, 815, 1284, 69, 1530, 750)

# Now are going to make a whole different Corona database compared to the two databases above (data per state/province USA and NL). This database that contains the data below provides information about the Corona cases and deaths
# each day for the USA and The Netherlands. The first data is for march 4 2020.
 
  # This vector contains all the days with data about Corona, the first data in the USA is for march 4 and the first data in The Netherlands is for march 6.  
  day <- c("03 04 2020", "03 05 2020", "03 06 2020", "03 07 2020", "03 08 2020", "03 09 2020", "03 10 2020", "03 11 2020", "03 12 2020", "03 13 2020", "03 14 2020", "03 15 2020", "03 16 2020", "03 17 2020", 
         "03 18 2020", "03 19 2020", "03 20 2020", "03 21 2020", "03 22 2020", "03 23 2020", "03 24 2020", "03 25 2020", "03 26 2020", "03 27 2020", "03 28 2020", "03 29 2020", "03 30 2020", "03 31 2020", 
         "04 01 2020", "04 02 2020", "04 03 2020", "04 04 2020", "04 05 2020", "04 06 2020", "04 07 2020", "04 08 2020", "04 09 2020", "04 10 2020", "04 11 2020", "04 12 2020", "04 13 2020", "04 14 2020", 
         "04 15 2020", "04 16 2020", "04 17 2020", "04 18 2020", "04 19 2020", "04 20 2020", "04 21 2020", "04 22 2020", "04 23 2020", "04 24 2020", "04 25 2020", "04 26 2020", "04 27 2020", "04 28 2020", 
         "04 29 2020", "04 30 2020", "05 01 2020", "05 02 2020", "05 03 2020", "05 04 2020", "05 05 2020", "05 06 2020", "05 07 2020", "05 08 2020", "05 09 2020", "05 10 2020", "05 11 2020", "05 12 2020", 
         "05 13 2020", "05 14 2020", "05 15 2020", "05 16 2020", "05 17 2020", "05 18 2020", "05 19 2020", "05 20 2020", "05 21 2020", "05 22 2020", "05 23 2020", "05 24 2020", "05 25 2020", "05 26 2020", 
         "05 27 2020", "05 28 2020", "05 29 2020", "05 30 2020", "05 31 2020", "06 01 2020", "06 02 2020", "06 03 2020", "06 04 2020", "06 05 2020", "06 06 2020", "06 07 2020", "06 08 2020", "06 09 2020", 
         "06 10 2020", "06 11 2020", "06 12 2020", "06 13 2020", "06 14 2020", "06 15 2020", "06 16 2020", "06 17 2020", "06 18 2020", "06 19 2020", "06 20 2020", "06 21 2020", "06 22 2020", "06 23 2020",
         "06 24 2020")

  # This vector contains the new confirmed cases in the USA.
  total_new_confirmed_cases_USA <- c(26, 64, 77, 101, 144, 148, 291, 269, 393, 565, 662, 676, 872, 1291, 2410, 3948, 5417, 6271, 8631, 10410, 9939, 12226, 17050, 19046, 20093, 19118, 20463, 25305, 26756, 28879, 32525, 
                                   33725, 25717, 29359, 30512, 32282, 34243, 33578, 31869, 28057, 24685, 25987, 29465, 32076, 30915, 28084, 26013, 25132, 25178, 29246, 31277, 35930, 34782, 26858, 22042, 24359, 25869,
                                   29637, 32964, 30531, 25382, 21278, 22226, 24805, 27514, 27095, 27421, 20697, 17779, 21486, 20549, 26762, 25382, 24527, 19731, 21109, 19662, 22368, 25028, 22206, 22717, 20253, 18554,
                                   16682, 18636, 23016, 23575, 21385, 21696, 16040, 20039, 22162, 21004, 23292, 20865, 18535, 16301, 17180, 20244, 17849, 24421, 25891, 21191, 18307, 23047, 23624, 27082, 30927, 31963, 
                                   28095, 26558, 33315, 37945)

  # This vector contains the new confirmed deaths in the USA.
  total_new_death_cases_USA <- c(2, 0, 3, 5, 2, 5, 5, 6, 4, 8, 7, 6, 14, 21, 26, 52, 55, 68, 110, 111, 162, 225, 253, 433, 447, 392, 554, 821, 940, 1075, 1185, 1353, 1175, 1212, 1928, 1936, 1856, 2078, 1899, 1493, 1462, 
                               2378, 2438, 2141, 2080, 1743, 1634, 1643, 2624, 2119, 1840, 2053, 1825, 1161, 1237, 2204, 2536, 2083, 1794, 1668, 1117, 877, 2435, 2701, 1971, 1695, 1555, 945, 840, 1591, 1715, 1858, 1524, 
                               1231, 785, 792, 1425, 1528, 1286, 1262, 1089, 646, 504, 634, 1379, 1216, 1175, 979, 605, 478, 1039, 1004, 909, 849, 725, 448, 491, 926, 847, 826, 759, 654, 345, 384, 739, 742, 694, 682, 550, 
                               283, 292, 766, 688)

  # This vector contains the new confirmed cases in The Netherlands, the first two values are zero because the first data is for march 6.
  total_new_confirmed_cases_NL <- c(0, 0, 46, 60, 76, 57, 61, 121, 111, 190, 155, 176, 278, 292, 346, 409, 534, 637, 573, 545, 811, 852, 1019, 1172, 1159, 1104, 884, 845, 1091, 1083, 1026, 904, 1224, 952, 777, 969, 
                                  1213, 1335, 1316, 1174, 964, 868, 734, 1061, 1235, 1140, 1066, 750, 729, 708, 887, 806, 655, 655, 400, 171, 386, 514, 475, 445, 335, 199, 317, 232, 455, 319, 289, 245, 161, 196, 227, 
                                  270, 200, 189, 125, 146, 108, 198, 253, 188, 176, 172, 209, 133, 190, 182, 176, 131, 185, 103, 102, 86, 209, 210, 183, 239, 165, 164, 184, 164, 210, 179, 143, 165, 139, 117, 115, 107, 76,
                                  91, 65, 64, 82)
  # This vector contains the new confirmed deaths in The Netherlands, the first two values are zero because the first data is for march 6.
  total_new_death_cases_NL <- c(0, 0, 1, 0, 2, 1, 0, 1, 0, 5, 2, 8, 4, 19, 15, 18, 30, 30, 43, 34, 63, 80, 78, 112, 93, 132, 93, 175, 134, 166, 148, 164, 115, 101, 234, 147, 148, 115, 132, 94, 86, 122, 189, 181, 144, 142, 
                              83, 67, 165, 138, 123, 112, 120, 66, 43, 48, 145, 84, 98, 94, 69, 26, 86, 36, 84, 71, 63, 18, 16, 54, 52, 28, 53, 27, 10, 14, 21, 33, 27, 13, 23, 11, 8, 26, 15, 32, 28, 20, 5, 6, 5, 10, 13, 
                              15, 6, 2, 3, 15, 11, 2, 9, 4, 2, 6, 5, 4, 4, 3, 8, 1, 0, 5, 2) 

  
  conf_rate_1000_states_NL <- confirmed_cases_NL/population_provices_NL
  death_rate_1000_states_NL <- death_cases_NL/population_provices_NL
  
  type_rate <- c("Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", "Confirmed * 100", 
                 "Deaths", "Deaths", "Deaths", "Deaths", "Deaths", "Deaths", "Deaths", "Deaths", "Deaths", "Deaths", "Deaths", "Deaths")
  
  nl_rate_vector <-  c(conf_rate_1000_states_NL, death_rate_1000_states_NL*10)
  
  # The four lines below calculate four cumalatives; the cumulative new confirmed cases and deaths for the USA, and the same two cumulatives for The Netherlands
  total_confirmed_cases_cum_USA <- c(cumsum(total_new_confirmed_cases_USA))
  total_death_cases_cum_USA <- c(cumsum(total_new_death_cases_USA))
  total_confirmed_cases_cum_NL <- cumsum(total_new_confirmed_cases_NL)
  total_death_cases_cum_NL <- cumsum(total_new_death_cases_NL)

# Now we are going to combine all the vectors with data.frame() in four databases.
  
  # This one contains all the data for the states and territories in the USA.
  corona_usa_total_state <- data.frame(state_USA, region_USA, abbs_states_USA, confirmed_cases_USA, recovered_cases_USA, death_cases_USA, population_states_USA, confirmed_rate_thousand_states_USA, death_rate_million_states_USA)
  
  # This one contains all the data for the 12 provinces in The Netherlands.
  corona_nl_total_province <- data.frame(province_NL, region_NL, population_provices_NL , confirmed_cases_NL, hospital_cases_NL, death_cases_NL, conf_rate_1000_states_NL, death_rate_1000_states_NL)
  
  # This one contains all the data 'day to day' for the USA.
  corona_usa_day_to_day <- data.frame(day, total_new_confirmed_cases_USA, total_confirmed_cases_cum_USA, total_new_death_cases_USA, total_death_cases_cum_USA)
  
  # This one contains all the data 'day to day' for The Netherlands.
  corona_usa_day_to_day <- data.frame(day, total_new_confirmed_cases_NL, total_new_death_cases_NL, total_death_cases_cum_NL)
  
  corona_rates_nl <- data.frame(province_NL, type_rate, nl_rate_vector)
  corona_rates_usa <- data.frame(confirmed_rate_thousand_states_USA,death_rate_million_states_USA)
  
  