# I'm gonna compare the 'continent regions with eachother in this dataset. To do this I will take some countries that will represent the region, the countries that I
# will take you can see below.
  # North America; Because North America contains three countries (I will locate Mexico in North America and not in Mid America), I will not split the continent in 
  # regions. The territories of the USA are Pacific and Atlantic Island or Mid America. I will take the data of all the three counries.
  # Mid America; Mid America are the countries located between Mexico and Colombia and the Island in the Caribbean. I will take the data of all the countries on the
  # mainland, Cuba and the Dominican Republic.
  # South America; South America is just the mainland of South America. I will take the data of Brazil, Peru, Argentinia, Venezuela and Suriname.
  # South Africa; I devide Africa in three regions, the eqautor is a border. South Africa are all the African Countries below the equator, I will take the data of
  # South Africa (the country), Madagascar, Tanzania and Zambia.
  # Mid East Africa; We seperate Mid East Africa from North West Africa by draw an imaginary line from Cameroon to Egypt, and we use data from Camaroon, Egypt, Ethiopia 
  # Uganda and Eritrea.
  # North West Africa; We take the data from Morocco, Libya, Mali, Ghana, Nigeria and Chad.
  # North West Europe; Europe is devided in two regions. When we draw an imaginary line from Croatia to Finland's border with Russia we see the first region North West 
  # Europe (The Western mainland and Scandinavia), and the second region European Russia and Eastern Europe. We count Russia as an European country and Turkey we use
  # no data from Turkey, because we 70% of the population of Russia lives in the European part and I can't find which part of the population of Turkey lives in the 
  # European part. I am going to use for North West Europe the data from Spain, the UK, Sweden, Germany, Italy, Iceland and Latvia. Eastern Europe will be Greece, Russia, 
  # Serbia, Croatia, Ukraine and Slovakia.
  # South West Azia; We are going to devide Azia in three regions, first note that we don't use Russia (European country), and the data of Turkey. South West Azia are 
  # the oil-countries and the countries and the region stops on the border with India and China. South East Asia is the region Indonesia and the countries by the Indian 
  # Ocean. The other countries, such as China and Japan are Mid Azia. I'll use the data of Yemen, Saudi-Arabia, Iran and Pakistan for South West Azia. The data of India, 
  # Indonesia, Thailand, the Philippines and Myanmar for South East Azia and China, South Korea, Japan and Mongolia for Mid Azia.
  # Oceania are just the the two big islands Australia and New Zealand and the little island in the oceans around Australia. I'm gonna use the data of Australia, New 
  # Zealand and to take one island in the ocean around Australia I use also the data of Papoea-New-Guinea.
  # The region Pacific and Atlantic Islands is more complicated. I'll use for this region the less developped island in the oceans but the islands must report their data. 
  # So I use the Falklandislands, Fiji, Antigua and Barbuda, British Virgin Islands, Greenland, New Caledonia, Bermuda and Faeroer. 

Mexico_pop <- 128932753
USA_pop <- 331002651
Canada_pop <- 37742154
Cuba_pop <- 11326616
Domenican_Republic_pop <- 10847910
Guatemala_pop <- 17915568
Belize_pop <- 397628
Honduras_pop <- 9904607
El_Salvador_pop <- 6486205
Nicaragua_pop <- 6624554
Costa_Rica_pop <- 5094118
Panama_pop <- 4314767
Brazil_pop <- 212559417
Peru_pop <- 32971854
Argentinia_pop <- 45195774
Venezuala_pop <- 28435940
Surinama_pop <- 586632
South_Africa_Country_pop <- 59308690
Madagascar_pop <- 27691018
Tanzania_pop <- 59734218
Zambia_pop <- 18383955
Cameroon_pop <- 26545863
Egypt_pop <- 102334404
Ethiopia_pop <- 114963588
Uganda_pop <- 45741007
Eritrea_pop <- 3546421
Morocco_pop <- 36910560
Libya_pop <- 6871292
Mali_pop <- 20250833
Ghana_pop <- 31072940
Nigeria_pop <- 206139589
Chad_pop <- 16425864
Spain_pop <- 46754778
UK_pop <- 67886011
Sweden_pop <- 10099265
Germany_pop <- 83783942
Italy_pop <- 60461826
Iceland_pop <- 341243
Latvia_pop <- 1886198
Greece_pop <- 10423054
Russia_pop <- 145934462
Serbia_pop <- 8737371
Croatia_pop <- 4105267
Ukraine_pop <- 43733762
Slovakia_pop <- 5459642
Yemen_pop <- 29825964
Saudi_Arabia_pop <- 34813871
Iran_pop <- 83992949
Pakistan_pop <- 220892340
India_pop <- 1380004385
Indonesia_pop <- 273523615
Thailand_pop <- 69799978
Philippines_pop <- 109581078
Myanmar_pop <- 54409800
China_pop <- 1439323776
South_Korea_pop <- 51269185
Japan_pop <- 126476461
Mongolia_pop <- 3278290
Australia_pop <- 25499884
New_Zealand_pop <- 4882233
Papoea_New_Guinea_pop <- 8947024
Falklandislands_pop <- 3480
Fiji_pop <- 896445
Antigua_and_Barbuda_pop <- 97929
British_Virgin_Island_pop <- 30231
Greenland_pop <- 56770
New_Caledonia_pop <- 285498
Bermuda_pop <- 62278
Faeroer_pop <- 48863



Mexico_conf_cases <- 165000
USA_conf_cases <- 2230000
Canada_conf_cases <- 100000
Cuba_conf_cases <- 2295
Domenican_Republic_conf_cases <- 24645
Guatemala_conf_cases <- 11868
Belize_conf_cases <- 22
Honduras_conf_cases <- 10739
El_Salvador_conf_cases <- 4329
Nicaragua_conf_cases <- 1823
Costa_Rica_conf_cases <- 1939
Panama_conf_cases <- 23351
Brazil_conf_cases <- 984000
Peru_conf_cases <- 244000
Argentinia_conf_cases <- 37497
Venezuala_conf_cases <- 3386
Surinama_conf_cases <- 277
South_Africa_Country_conf_cases <- 83890
Madagascar_conf_cases <- 1403
Tanzania_conf_cases <- 509
Zambia_conf_cases <- 1416
Cameroon_conf_cases <- 10638
Egypt_conf_cases <- 50437
Ethiopia_conf_cases <- 3954
Uganda_conf_cases <- 741
Eritrea_conf_cases <- 142
Morocco_conf_cases <- 9042
Libya_conf_cases <- 510
Mali_conf_cases <- 1906
Ghana_conf_cases <- 12929
Nigeria_conf_cases <- 18480
Chad_conf_cases <- 854
Spain_conf_cases <- 245000
UK_conf_cases <- 300000
Sweden_conf_cases <- 56043 
Germany_conf_cases <- 190000
Italy_conf_cases <- 238000
Iceland_conf_cases <- 1816
Latvia_conf_cases <- 1108
Greece_conf_cases <- 3227
Russia_conf_cases <- 568000
Serbia_conf_cases <- 12616
Croatia_conf_cases <- 2269
Ukraine_conf_cases <- 34984
Slovakia_conf_cases <- 1562
Yemen_conf_cases <- 909
Saudi_Arabia_conf_cases <- 146000
Iran_conf_cases <- 198000
Pakistan_conf_cases <- 165000
India_conf_cases <- 381000
Indonesia_conf_cases <- 43803
Thailand_conf_cases <- 3146
Philippines_conf_cases <- 28459
Myanmar_conf_cases <- 286
China_conf_cases <- 83325
South_Korea_conf_cases <- 12306 
Japan_conf_cases <- 17740
Mongolia_conf_cases <- 204
Australia_conf_cases <- 7409
New_Zealand_conf_cases <- 1157
Papoea_New_Guinea_conf_cases <- 8
Falklandislands_conf_cases <- 13
Fiji_conf_cases <- 18
Antigua_and_Barbuda_conf_cases <- 26
British_Virgin_Island_conf_cases <- 8
Greenland_conf_cases <- 13
New_Caledonia_conf_cases <- 21
Bermuda_conf_cases <- 144
Faeroer_conf_cases <- 187

  
Mexico_death_cases <- 19747
USA_death_cases <- 120000
Canada_death_cases <- 8300
Cuba_death_cases <- 85
Domenican_Republic_death_cases <- 635
Guatemala_death_cases <- 449
Belize_death_cases <- 2
Honduras_death_cases <- 343
El_Salvador_death_cases <- 86
Nicaragua_death_cases <- 64
Costa_Rica_death_cases <- 12
Panama_death_cases <- 475
Brazil_death_cases <- 47897
Peru_death_cases <- 7461
Argentinia_death_cases <- 948
Venezuala_death_cases <- 28
Surinama_death_cases <- 8
South_Africa_Country_death_cases <- 1737
Madagascar_death_cases <- 13 
Tanzania_death_cases <- 21
Zambia_death_cases <- 11
Cameroon_death_cases <- 282
Egypt_death_cases <- 1938
Ethiopia_death_cases <- 65
Uganda_death_cases <-  0
Eritrea_death_cases <- 0
Morocco_death_cases <- 213
Libya_death_cases <- 10
Mali_death_cases <- 107
Ghana_death_cases <- 66
Nigeria_death_cases <- 475
Chad_death_cases <- 74
Spain_death_cases <- 28313
UK_death_cases <- 42288
Sweden_death_cases <- 5053
Germany_death_cases <- 8946
Italy_death_cases <- 34514
Iceland_death_cases <- 10
Latvia_death_cases <- 30
Greece_death_cases <- 188
Russia_death_cases <- 7841
Serbia_death_cases <- 258
Croatia_death_cases <- 107
Ukraine_death_cases <- 985
Slovakia_death_cases <- 28
Yemen_death_cases <- 248
Saudi_Arabia_death_cases <- 1139
Iran_death_cases <- 9392
Pakistan_death_cases <- 3229
India_death_cases <- 12573
Indonesia_death_cases <- 2373
Thailand_death_cases <- 58
Philippines_death_cases <- 1130
Myanmar_death_cases <- 6
China_death_cases <- 4634
South_Korea_death_cases <- 280
Japan_death_cases <- 935
Mongolia_death_cases <- 0
Australia_death_cases <- 102
New_Zealand_death_cases <- 22
Papoea_New_Guinea_death_cases <- 0
Falklandislands_death_cases <- 0
Fiji_death_cases <- 0
Antigua_and_Barbuda_death_cases <- 3
British_Virgin_Island_death_cases <- 1
Greenland_death_cases <- 0
New_Caledonia_death_cases <- 0
Bermuda_death_cases <- 9
Faeroer_death_cases <- 0


North_America_pop <- Mexico_pop + USA_pop + Canada_pop
Mid_America_pop <- Cuba_pop + Domenican_Republic_pop + Guatemala_pop + Belize_pop + Honduras_pop + El_Salvador_pop + Nicaragua_pop + Costa_Rica_pop + Panama_pop
South_America_pop <- Brazil_pop + Peru_pop + Argentinia_pop + Venezuala_pop + Surinama_pop
South_Africa_pop <- South_Africa_Country_pop + Madagascar_pop + Tanzania_pop + Zambia_pop
Mid_East_Africa_pop <- Cameroon_pop + Egypt_pop + Ethiopia_pop + Uganda_pop + Eritrea_pop
North_West_Africa_pop <- Morocco_pop + Libya_pop + Mali_pop + Ghana_pop + Nigeria_pop + Chad_pop
North_West_Europe_pop <- Spain_pop + UK_pop + Sweden_pop + Germany_pop + Italy_pop + Iceland_pop + Latvia_pop
East_Europe_pop <- Greece_pop + Russia_pop + Serbia_pop + Croatia_pop + Ukraine_pop + Slovakia_pop
South_West_Azia_pop <- Yemen_pop + Saudi_Arabia_pop + Iran_pop + Pakistan_pop
South_East_Azia_pop <- India_pop + Indonesia_pop + Thailand_pop + Philippines_pop + Myanmar_pop
Mid_Azia_pop <- China_pop + South_Korea_pop + Japan_pop + Mongolia_pop
Oceania_pop <- Australia_pop + New_Zealand_pop + Papoea_New_Guinea_pop
Pacific_and_Atlantic_Island_pop <- Falklandislands_pop + Fiji_pop + Antigua_and_Barbuda_pop + British_Virgin_Island_pop + Greenland_pop + New_Caledonia_pop + 
  Bermuda_pop + Faeroer_pop
  

North_America_conf_cases <- Mexico_conf_cases + USA_conf_cases + Canada_conf_cases
Mid_America_conf_cases <- Cuba_conf_cases + Domenican_Republic_conf_cases + Guatemala_conf_cases + Belize_conf_cases + Honduras_conf_cases + El_Salvador_conf_cases + 
  Nicaragua_conf_cases + Costa_Rica_conf_cases + Panama_conf_cases
South_America_conf_cases <- Brazil_conf_cases + Peru_conf_cases + Argentinia_conf_cases + Venezuala_conf_cases + Surinama_conf_cases
South_Africa_conf_cases <- South_Africa_Country_conf_cases + Madagascar_conf_cases + Tanzania_conf_cases + Zambia_conf_cases
Mid_East_Africa_conf_cases <- Cameroon_conf_cases + Egypt_conf_cases + Ethiopia_conf_cases + Uganda_conf_cases + Eritrea_conf_cases
North_West_Africa_conf_cases <- Morocco_conf_cases + Libya_conf_cases + Mali_conf_cases + Ghana_conf_cases + Nigeria_conf_cases + Chad_conf_cases
North_West_Europe_conf_cases <- Spain_conf_cases + UK_conf_cases + Sweden_conf_cases + Germany_conf_cases + Italy_conf_cases + Iceland_conf_cases + Latvia_conf_cases
East_Europe_conf_cases <- Greece_conf_cases + Russia_conf_cases + Serbia_conf_cases + Croatia_conf_cases + Ukraine_conf_cases + Slovakia_conf_cases
South_West_Azia_conf_cases <- Yemen_conf_cases + Saudi_Arabia_conf_cases + Iran_conf_cases + Pakistan_conf_cases
South_East_Azia_conf_cases <- India_conf_cases + Indonesia_conf_cases + Thailand_conf_cases + Philippines_conf_cases + Myanmar_conf_cases
Mid_Azia_conf_cases <- China_conf_cases + South_Korea_conf_cases + Japan_conf_cases + Mongolia_conf_cases
Oceania_conf_cases <- Australia_conf_cases + New_Zealand_conf_cases + Papoea_New_Guinea_conf_cases
Pacific_and_Atlantic_Island_conf_cases <- Falklandislands_conf_cases + Fiji_conf_cases + Antigua_and_Barbuda_conf_cases + British_Virgin_Island_conf_cases + 
  Greenland_conf_cases + New_Caledonia_conf_cases + Bermuda_conf_cases + Faeroer_conf_cases

North_America_death_cases <- Mexico_death_cases + USA_death_cases + Canada_death_cases
Mid_America_death_cases <- Cuba_death_cases + Domenican_Republic_death_cases + Guatemala_death_cases + Belize_death_cases + Honduras_death_cases + El_Salvador_death_cases + 
  Nicaragua_death_cases + Costa_Rica_death_cases + Panama_death_cases
South_America_death_cases <- Brazil_death_cases + Peru_death_cases + Argentinia_death_cases + Venezuala_death_cases + Surinama_death_cases
South_Africa_death_cases <- South_Africa_Country_death_cases + Madagascar_death_cases + Tanzania_death_cases + Zambia_death_cases
Mid_East_Africa_death_cases <- Cameroon_death_cases + Egypt_death_cases + Ethiopia_death_cases + Uganda_death_cases + Eritrea_death_cases
North_West_Africa_death_cases <- Morocco_death_cases + Libya_death_cases + Mali_death_cases + Ghana_death_cases + Nigeria_death_cases + Chad_death_cases
North_West_Europe_death_cases <- Spain_death_cases + UK_death_cases + Sweden_death_cases + Germany_death_cases + Italy_death_cases + Iceland_death_cases + Latvia_death_cases
East_Europe_death_cases <- Greece_death_cases + Russia_death_cases + Serbia_death_cases + Croatia_death_cases + Ukraine_death_cases + Slovakia_death_cases
South_West_Azia_death_cases <- Yemen_death_cases + Saudi_Arabia_death_cases + Iran_death_cases + Pakistan_death_cases
South_East_Azia_death_cases <- India_death_cases + Indonesia_death_cases + Thailand_death_cases + Philippines_death_cases + Myanmar_death_cases
Mid_Azia_death_cases <- China_death_cases + South_Korea_death_cases + Japan_death_cases + Mongolia_death_cases
Oceania_death_cases <- Australia_death_cases + New_Zealand_death_cases + Papoea_New_Guinea_death_cases
Pacific_and_Atlantic_Island_death_cases <- Falklandislands_death_cases + Fiji_death_cases + Antigua_and_Barbuda_death_cases + British_Virgin_Island_death_cases + 
  Greenland_death_cases + New_Caledonia_death_cases + Bermuda_death_cases + Faeroer_death_cases


Region <- c("North America", "Mid America", "South America", "South Africa", "Mid East Africa", "North West Africa", "North West Europe", "East Europe", 
                        "South West Azia", "South East Azia","Mid Azia", "Oceania", "Pacific and Atlantic Islands")

Abb_region <- c("N America", "Lat. America", "S America", "S Africa", "ME Africa", "NW Africa", "NW Europe", "E Europe", 
            "SW Azia", "SE Azia","M Azia", "Oceania", "Pac. Atl. Islands")

Continent <- c("North America", "North America", "South America", "Africa", "Africa", "Africa", "Europe", "Europe", "Azia", "Azia","Azia", "Oceania", 
                        "Other")

Reliability_test_capacity <- c("Good", "Bad", "Bad", "Bad", "Bad", "Bad", "Very Good", "Good", 
            "Bad", "Bad","Normal", "Good", "Bad")


western_countries <- c("Spain", "UK", "Sweden", "Germany", "Italy", "Iceland", "Latvia", "Greece", "Russia", "Serbia", "Croatia", "Ukraine", "Slovakia", "USA", "Canada", 
                       "Australia", "New Zealand")

western_countries_pop <- c(Spain_pop, UK_pop, Sweden_pop, Germany_pop, Italy_pop, Iceland_pop, Latvia_pop, Greece_pop, Russia_pop, Serbia_pop, Croatia_pop, Ukraine_pop, 
                           Slovakia_pop, USA_pop, Canada_pop, Australia_pop, New_Zealand_pop)

western_countries_confirmed <- c(Spain_conf_cases, UK_conf_cases, Sweden_conf_cases, Germany_conf_cases, Italy_conf_cases, Iceland_conf_cases, Latvia_conf_cases, Greece_conf_cases,
                                 Russia_conf_cases, Serbia_conf_cases, Croatia_conf_cases, Ukraine_conf_cases, Slovakia_conf_cases, USA_conf_cases, Canada_conf_cases, 
                                 Australia_conf_cases, New_Zealand_conf_cases)

western_countries_deaths <- c(Spain_death_cases, UK_death_cases, Sweden_death_cases, Germany_death_cases, Italy_death_cases, Iceland_death_cases, Latvia_death_cases, Greece_death_cases,
                              Russia_death_cases, Serbia_death_cases, Croatia_death_cases, Ukraine_death_cases, Slovakia_death_cases, USA_death_cases, Canada_death_cases, 
                              Australia_death_cases, New_Zealand_conf_cases)

western_countries_confirmed_rate <- western_countries_confirmed/western_countries_pop
western_countries_deaths_rate <- western_countries_deaths/western_countries_pop 

Population <- c(North_America_pop, Mid_America_pop, South_America_pop, South_Africa_pop, Mid_East_Africa_pop, North_West_Africa_pop, North_West_Europe_pop, 
                                   East_Europe_pop, South_West_Azia_pop, South_East_Azia_pop, Mid_Azia_pop, Oceania_pop, Pacific_and_Atlantic_Island_pop)

Confirmed_cases <- c(North_America_conf_cases, Mid_America_conf_cases, South_America_conf_cases, South_Africa_conf_cases, Mid_East_Africa_conf_cases, 
                           North_West_Africa_conf_cases, North_West_Europe_conf_cases, East_Europe_conf_cases, South_West_Azia_conf_cases, South_East_Azia_conf_cases,
                           Mid_Azia_conf_cases, Oceania_conf_cases, Pacific_and_Atlantic_Island_conf_cases)

Death_cases <- c(North_America_death_cases, Mid_America_death_cases, South_America_death_cases, South_Africa_death_cases, Mid_East_Africa_death_cases, 
                 North_West_Africa_death_cases, North_West_Europe_death_cases, East_Europe_death_cases, South_West_Azia_death_cases, South_East_Azia_death_cases,
                 Mid_Azia_death_cases, Oceania_death_cases, Pacific_and_Atlantic_Island_death_cases)

Confirmed_rate_per_million <- Confirmed_cases/Population*1000000

Death_rate_per_million <- Death_cases/Population*1000000

corona_continents_regions <- data.frame(Continent, Region, Population, Confirmed_cases, Death_cases, Confirmed_rate_per_million, Death_rate_per_million)


corona_western_countries <- data.frame(western_countries, western_countries_pop, western_countries_confirmed, western_countries_deaths, western_countries_confirmed_rate, western_countries_deaths_rate)