# Corona-Covid19, latest version 1.1.0 published june 25 2020.

version 1.0.0
files in the reposotiry: 18 files
filenames,
Corona-Covid19.Rproj
Corona_Continents_Data.R
Corona_Continents_graphs.R
Corona_Markdown_Continents.Rmd
Corona_Markdown_Continents.html
Corona_Markdown_Continents.log
Corona_Markdown_Continents.tex
Corona_Markdown_USA_NL.Rmd
Corona_Markdown_USA_NL.html
Corona_Markdown_USA_NL_days.Rmd
Corona_Markdown_USA_NL_days.html
Corona_Markdown_USA_NL_state.Rmd
Corona_Markdown_USA_NL_state.html
Corona_USA_NL_data.R
Corona_USA_NL_graphs.R
All_data.Rmd
Corona_Libraries.R
README.md


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
  
  A 'Chunk' is an object that we create when we want to write code that we type in a R file. We can create a new 'chunk' with th command alt I shortcut in apple and the ctrl alt I in windows. When we type the code outside the 'chunk' we will get the code showed as text. When we type for example the code for a plot outside a chunk we will get the code as text, when we type the same code inside the 'chunk' we will get a figure. It is important that we describe a 'chunk', so we know what the 'chunk' does, we can add a description between the {} (when a description is not unique you will get an error).  To run a chunk we have multiple options, with the shortcut command shift return for apple and ctrl shift enter we can run the chunk where the curser is. An other option is to run the chunk is to click on the green arrow in the upper right corner of the chunk. The last option is by using the run-button in the upper right corner of the window, we will get more options for running the chunks. We can choose to run a specific line, the currunt, the next, all above, all below or all 'chunks'.
  Knit is a tool in R Markdown to run all chunks and get a report in a new window. We can use Knit by clicking on the Knit-button in the upper left corner. It can take some time to Knit, but we can see progress in the R Markdown window in a percentage. When we get the output we will see also the code of the figures, when we type between the {}, something like {R plot a figure, echo = FALSE, message = FALSE} we can hide the code. In the output-window we see in the upper left corner a button 'open in browser', we can click on this button to see the final html-page.
  The header gives us information about the report, we can add several thing to the header but we start with the title, the author, the data and the type of the report. These four things are automaticly added to the header when we created the R Markdown file.
  The R Markdown window is a window like the console window, and is located at the same position on your screen. It is a tablad in the collection Console, Terminal, R Markdown and Jobs. We see the progress when we Knit the file. We see that we have two versions, that we can switch in the upper right corner. We have a R Markdown window that contains the output, and a R Markdown window with the Issues. When an error accurs the page switches automatticaly to the Issues version.
  
  
  
  Step 3: In step 1 and 2 we learned how to use the project when you use only the R files that the project contains. In the project are also R Markdown files. In version 1.0.0 the R Markdown files are one R Markdown file and the html file of that R Markdown file. To run the files your R must have some libraries; tidyverse, knitr, kableExtra and ggrepel. The tidyverse library and ggrepel the ggrepel library are libraries that you also need in the R files, the other three are in the other files not required. To install the libraries there is an extra file in version 1.1.0 that installs and load all the libraries. The data is not loaded from an other file, but included in a chunk. There are three ways to run the R Markdown file; run an example in R Markdown, run the file in R Markdown and run it in your browser. When you want to see changes in a chunk you can run an example in the same file, this is much faster as the other two ways to run the file. You can do this by clicking on the green arrow in the upper right corner in the chunk or by clicking on the button "Run" in the upper right corner in the window. The second way, run the file in R Markdown, returns the result. You will see all the chunks and text. You can do this by clicking on the Knit button in upper left corner of the window. To see the result on the web you can click now, after you clicked on the Knit buttom, on the button in the upper left corner 'Open in Browser' and you see the result in a html file.


  Disclaimer:
  Responsibility or liability for the frequency of provision and accuracy of the Corona data (COVID-19 data) or any use made of the Corona data (COVID-19 data) bu the user pulled from the Github repository with author Pieter Hobbelen, whether or not arising from the negligency of any of the data (COVID-19 data) supplier, such as the author or the sources.
