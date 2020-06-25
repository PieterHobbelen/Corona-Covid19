# Corona-Covid19, latest version 1.1.0 published june 25 2020.

version 1.0.0
files in the reposotiry: 8 files
filenames, projects (1)
  Corona-Covid19.Rproj
filenames, datafiles R (2)
  Corona_USA_NL_data.R
  Corona_Continents_Data.R
filenames, graphsfiles R (2)
  Corona_USA_NL_graphs.R
  Corona_Continents_graphs.R
filenames, others (1);
  README.md
filenames, markdowns (2)
  Corona_Markdown_USA_NL.Rmd
  Corona_Markdown_USA_NL.html

version 1.0.1, add Corona_Libraries.R

How to install this project on your own computer:
  Step 1: The data and the graphs are not in the same file, this is because the files are not too long. The data is devided into       two files. One datafile with the data to compare the USA and the NL, and the other one to compare the continents with eachother. To avoid errors you must run the datafile before you plot the figures. So step one is to run the datafiles. In version 1.1.0 is also a file with libraries, when you don't have the libraries run also this file.
  Step 2: If you did step 1 correct, you have all the data in your local environment. Now you are ready to get the graphs in your plots-window. You can do this in the console-window, by typing the name of the figure. The names looks like this;
  corona_usa_nl_scatter_pop_conf_usa, the term gives us information about the graph. We can devide the terms in four parts; the file, the type, the axis, and extra information about the graph when we need this. Note that we do not use capital letters and no numbers. We can read a term like corona_usa_nl_scatter_pop_conf_usa as a scatterplot (the type), with data from the file Corona_USA_NL (the file), with on the X-axis the population (pop) and on the Y-axis the confirmed (conf) cases (the axis) and we have extra information, 'usa'. So we will get a scatterplot about the USA's data. 
  Step 3: When we present the data, we want a report. With R Markdown we can create a report in html, pdf and word. In this project we have three reports, all in html. We have reports about the states in the USA, a day to day data report with data for China, the USA and The Netherlands, and a report with data for regions in the world.
  In R Markdown there are some new tools, that we don't use or have in a normal R file;
  * a 'chunk'
  * Knit
  * a header
  * the R Markdown window
  
  A 'Chunk' is an object that we create when we want to write code that we type in a R file. When we type the code outside the 'chunk' we will get the code showed as text. When we type for example the code for a plot outside a chunk we will get the code as text, when we type the same code inside the 'chunk' we will get a figure. To run a chunk we have multiple options, with the shortcut command shift return for apple and ctrl shift enter we can run the chunk where the curser is. 
  
  
  
  Step 3: In step 1 and 2 we learned how to use the project when you use only the R files that the project contains. In the project are also R Markdown files. In version 1.0.0 the R Markdown files are one R Markdown file and the html file of that R Markdown file. To run the files your R must have some libraries; tidyverse, knitr, kableExtra and ggrepel. The tidyverse library and ggrepel the ggrepel library are libraries that you also need in the R files, the other three are in the other files not required. To install the libraries there is an extra file in version 1.1.0 that installs and load all the libraries. The data is not loaded from an other file, but included in a chunk. There are three ways to run the R Markdown file; run an example in R Markdown, run the file in R Markdown and run it in your browser. When you want to see changes in a chunk you can run an example in the same file, this is much faster as the other two ways to run the file. You can do this by clicking on the green arrow in the upper right corner in the chunk or by clicking on the button "Run" in the upper right corner in the window. The second way, run the file in R Markdown, returns the result. You will see all the chunks and text. You can do this by clicking on the Knit button in upper left corner of the window. To see the result on the web you can click now, after you clicked on the Knit buttom, on the button in the upper left corner 'Open in Browser' and you see the result in a html file.


  Disclaimer:
  Responsibility or liability for the frequency of provision and accuracy of the Corona data (COVID-19 data) or any use made of the Corona data (COVID-19 data) bu the user pulled from the Github repository with author Pieter Hobbelen, whether or not arising from the negligency of any of the data (COVID-19 data) supplier, such as the author or the sources.
