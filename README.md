# Corona-Covid19, latest version 1.0.1 published june 21 2020.

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
files in the reposotiry: 9 files
filenames, projects (1)
  Corona-Covid19.Rproj
filenames, datafiles R (2)
  Corona_USA_NL_data.R
  Corona_Continents_Data.R
filenames, graphsfiles R (2)
  Corona_USA_NL_graphs.R
  Corona_Continents_graphs.R
filenames, others (2);
  README.md
  Corona_Libraries.R
filenames, markdowns (2)
  Corona_Markdown_USA_NL.Rmd
  Corona_Markdown_USA_NL.html

How to install this project on your own computer:
  Step 1: The data and the graphs are not in the same file, this is because the files are not too long. The data is devided into       two files. One datafile with the data to compare the USA and the NL, and the other one to compare the continents with eachother. To avoid errors you must run the datafile before you plot the figures. So step one is to run the datafiles. In version 1.0.1 is also a file with libraries, when you don't have the libraries, run also this file (when you don't run the Markdown file the library tidyverse is enough).
  Step 2: If you did step 1 correct, you have all the data in your local environment. Now you are ready to get the graphs in your plots-window. You can do this in the console-window, by typing the name of the figure. The names looks like this;
  graph_a_scatter_pop_conf_USA, all the names start with 'graph_' the character followed by an underscore then is to make the name unique, 'scatter_' is the type of the figure. In version 1.0.0 there are only scatterplots, so this term is always scatter. In a other version this type can be for example 'box', 'line', 'histo' or 'dens' for example (boxplot, lineplot, histogram, or a densityplot). The next two terms are the variables on the x-axis and on the y-axis. In this case we have the population on the x-axis, and the confirmed cases on the y-axis. The names of the graphs include always these terms, we see in this case another term, this term gives us extra information about the figure. Note that we are have the confirmed cases in the USA and the NL, so the extra term let us know that this plot is about the confirmed cases in the USA.
  Step 3: In step 1 and 2 we learned how to use the project when you use only the R files that the project contains. In the project are also R Markdown files. In version 1.0.0 the R Markdown files are one R Markdown file and the html file of that R Markdown file. To run the files your R must have some libraries; tidyverse, knitr, kableExtra and ggrepel. Tidyverse is a library that you also need in the R files, the other three are in the other files not required. To install the libraries there is an extra file in version 1.0.1 that install and load  all the libraries. The data is not loaded from an other file, but included in a chunk. There are three ways to run the R Markdown file; run an example in R Markdown, run the file in R Markdown and run it in your browser. When you want to see changes in a chunk you can run an example in the same file, this is much faster as the other two ways to run the file. You can do this by clicking on the green arrow in the upper right corner in the chunk or by clicking on the button "Run" in the upper right corner in the window. The second way, run the file in R Markdown, returns the result. You will see all the chunks and text. You can do this by clicking on the Knit button in upper left corner of the window. To see the result on the web you can click now, after you clicked on the Knit buttom, on the button in the upper left corner 'Open in Browser' and you see the result in a html file.


  Disclaimer:
  Responsibility or liability for the frequency of provision and accuracy of the Corona data (COVID-19 data) or any use made of the Corona data (COVID-19 data) bu the user pulled from the Github repository with author Pieter Hobbelen, whether or not arising from the negligency of any of the data (COVID-19 data) supplier, such as the author or the sources.
