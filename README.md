# GRAD-E1244: Data Management with R

### Fall 2017

**Version: 15 August 2017**

### General Information

- Instructor: Matthias Haber

- Office: 3.60

- Email:  <a href="mailto:haber@hertie-school.org">haber@hertie-school.org</a>   
        
- Work:  <a href="https://github.com/mhaber">https://github.com/mhaber</a>

**Instructor Information**

Matthias Haber is a Postdoctoral Research Scientist for the Governance Report at the Hertie School of Governance. He is a political scientist with research interests in party politics, electoral behavior, machine learning, survey experiments, and measurement problems. He was previously Research Associate at the Collaborative Research Center ‘Political Economy of Reforms’ at the University of Mannheim. He holds degrees from the University of Mannheim, the University of Essex, and the University of Potsdam.

### Course Contents and Learning Objectives
As data is increasingly available online, data analysis has replaced data acquisition as the bottleneck to empirical research in the social sciences. 80% of empirical research is spent sourcing, cleaning and preparing often noisy data, while the remaining 20% is actual data analysis. Extracting knowledge from heterogeneous datasets requires not only computational tools, but the programming skills to use them effectively. 

This course introduces computational methods needed for data generation, data manipulation, data visualization, and data reproducibility and provides students with the ability to apply them to their own projects. There is an increasing demand inside and outside of academia for skills to effectively collect, transform, and analyze data as well as present results to a range of audiences making this course equally relevant for students seeking scientific or business careers. 

The course is organized in three parts. The first part of the course introduces students to ways to effectively visualize and transform data. The second part focuses on importing different data formats, storing them in a consistent format, and narrowing in on observations of interests. The final part of this course shows ways to communicate the results to others.  

The course is intended for students with experience in working with R. If you have had little to no exposure to R before, but nevertheless want to take this course, then you have to complete the Introduction to R course on [DataCamp](https://www.datacamp.com/courses/free-introduction-to-r) and be willing to invest more time into learning R in addition to the regular course work. 
All lecture materials and their source files will be hosted in the course's [GitHub repository](https://github.com/mhaber/HertieDataScience) and on [Moodle](https://moodle.hertie-school.org/course/view.php?id=1657). You are highly encouraged to suggest changes to the lecture material with a pull request (we'll learn about how to do this during the first week of class) if you think of improvements that can be made for clarity, relevance, and to fix typos. All of the software used in this course will be open source, i.e. free. If you can, please bring your own laptop to class and download and install [R](http://cran.ma.imperial.ac.uk/) and [RStudio](http://www.rstudio.com/products/rstudio/download/). 


### Grading and Assignments
A certificate is granted for regular attendance, active participation, the completion of small, weekly homework exercises, and a final data project. Political science thrives of collaboration and co-authorship. Hence, the participants are allowed (but not required) to complete their homework exercises and their final projects in two-person teams. The data project is due in the final exam week. 

**1. Homework Exercises**

Each week students have to complete small homework exercises that allow them to directly apply the techniques they learned in class. Homework exercises contribute 5% to the final grade each and students are encouraged to complete them in pairs.   

**2. Final project**

For the final data project students are given a large dataset and will analyze it and present their results using their own ideas and skills learned throughout the course.   

**3. Participation**

Students are expected to be present and prepared for every class session and actively engage in class discussions. Furthermore, you are encouraged to make pull requests to the main course material if you find an error or think of an improvement and participate in online discussions. As such, your GitHub contributor statistics will be used to partially evaluate your participation.  

**Composition of the Final Grade**

| Name                            | Percent of Final Mark | Due             |
|---------------------------------|-----------------------|-----------------|
| Homework Exercises              | 50%                   | Weekly          |
| Data Project                    | 40%                   | Final Exam Week |
| Attendance/active Participation | 10%                   | -               |

**Late submission of assignments**

For each day the assignment is turned in late, the grade will be reduced by 10% (e.g. submission two days after the deadline would result in 20% grade deduction).

**Attendance**

Students are expected to be present and prepared for every class session. Active participation during lectures and seminar discussions is essential. If unavoidable circumstances arise which prevent attendance or preparation, the instructor should be advised by email with as much advance notice as possible. Please note that students cannot miss more than two sessions. For further information please consult the Examination Rules §4.

**Academic integrity**

The Hertie School of Governance is committed to the standards of good academic and ethical conduct. Any violation of these standards shall be subject to disciplinary action. Plagiarism, deceitful actions as well as free-riding in group work are not tolerated. See Examination Rules §11.

### General Readings
If you want to understand how to use R as a programming language then this is a great place to start if R is your first programming language:
- Grolemund, G. 2014. Hands-On Programming with R: Write Your Own Functions and Simulations. O'Reilly Media, Inc. 

If you have existing programming experience then I recommend reading this guide: 

- Wickham, H. 2014. [Advanced R](http://adv-r.had.co.nz/). CRC Press. 

A great guide on how to create dynamic and highly reproducible research:

- Gandrud, C. 2015. Reproducible Research with R and RStudio. 2nd Edition. Chapman & Hall/CRC Press, Oxford.
Finally, the core background reading for the course is:

- Wickham, H. and G. Grolemund. 2017. R for Data Science: Import, Tidy, Transform, Visualize, and Model Data. O'Reilly.

### Session Overview

| Session            | Session Date     | Session Title                                    |
|--------------------|------------------|--------------------------------------------------|
|    1               |    04.09.2017    |    Introduction to the Course                    |
|    2               |    11.09.2017    |    Data Visualization                            |
|    3               |    18.09.2017    |    Data Transformation                           |
|    4               |    25.09.2017    |    Exploratory Data Analysis                     |
|    5               |    02.10.2017    |    Data Import                                   |
|    6               |    09.10.2017    |    Tidy Data                                     |
|    7               |    16.10.2017    |    Working with Relational Data                  |
| **Mid-term Exam Week** |                  |                                                  |
|    8               |    30.10.2017    |    Working with Strings                          |
|    9               |    06.11.2017    |    Web Scraping                                  |
|    10              |    13.11.2017    |    Markup languages                              |
|    11              |    20.11.2017    |    Graphics for communication                    |
|    12              |    27.11.2017    |    Guest Lecture – Work of a Data   Scientist    |

### Course Sessions and Readings 
**Part I: Data Exploration**

| Session 1: 04.09.2017 | Introduction to the Course                             |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn about the course structure and how to use GitHub |
| Required Readings     |- Harrison, E. 2015. [RStudio and GitHub](https://www.r-bloggers.com/rstudio-and-github/). R-bloggers.com |
|                       |- [Interactive introduction to Git from the Code School](http://try.github.io/levels/1/challenges/1)  |
| Additional Readings   |                                                        |

| Session 2: 11.09.2017 | Data Visualization                                     |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn about the grammar of graphics with ggplot2       |
| Required Readings     |- Wickham, Hadley. 2010. “A Layered Grammar of Graphics”. _Journal of Computational and Graphical Statistics_ 19 (1): 3–28. |
|                       |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 3.  |
| Additional Readings   |                                                        |

| Session 3: 18.09.2017 | Data Transformation                                    |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to transform data with dplyr                 |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 5. |
| Additional Readings   |                                                        |

| Session 4: 25.09.2017 | Exploratory Data Analysis                             |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to combine the power of ggplot2 and dplyr to explore data |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 7. |
| Additional Readings   |                                                        |

**Part II: Data Wrangling**

| Session 5: 02.10.2017 | Data Import                                            |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to read different file formats into R.       |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 11. |
| Additional Readings   |                                                        |

| Session 6: 09.10.2017 | Tidy Data                                              |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to organize data consistently with tidyr     |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 12. |
|                       |- Wickham, Hadley. 2014. “Tidy Data”. _Journal of Statistical Software_ 59 (10).  |
| Additional Readings   |                                                        |

| Session 7: 16.10.2017 | Working with Relational Data                           |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to work with multiple tables of data         |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 13. |
| Additional Readings   |                                                        |

**Mid-term Exam Week: 23-27 October 2017 – no class**

| Session 8: 30.10.2017 | Working with Strings                                   |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to effectively manipulate strings with stringr |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 14. |
|                       |- Wickham, Hadley. 2010. ‘‘stringr: modern, consistent string processing’’. _The R Journal_ 2 (2): 38-40.  |
| Additional Readings   |                                                        |

| Session 9: 06.11.2017 | Web Scraping                                           |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to automatically collect data off the web and interact with APIs |
| Required Readings     |- Munzert, S., C. Rubba, P. Meißner and D. Nyhuis. 2015. _Automated Data Collection with R A Practical Guide to Web Scraping and Text Mining_. Wiley. Chapter 9. |
|                       |- Law, J. and J. Rosenblum. 2015. [rvest tutorial: scraping the web using R.](https://stat4701.github.io/edav/2015/04/02/rvest_tutorial/)  |
|                       | - Bacon, Greg. [Regular Expressions](https://stackoverflow.com/questions/4736/learning-regular-expressions/2759417#2759417). Stackoverflow.com |
| Additional Readings   |                                                        |

**Part III: Data Communication**

| Session 10: 13.11.2017 | Markup languages                                      |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to collaborate and communicate with literate programming |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapters 27, 29, 30. |
|                       |- RStudio. 2015. [RMarkdown--Dynamic Documents for R.](http://rmarkdown.rstudio.com/)  |
|                       |- RStudio. 2015. [Pandoc Markdown.](http://rmarkdown.rstudio.com/authoring_pandoc_markdown.html) |
| Additional Readings   |- RStudio. 2015. [Presentations with ioslides.](http://rmarkdown.rstudio.com/ioslides_presentation_format.html)   |

| Session 11: 20.11.2017 | Graphics for communication                            |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn how to (dynamically) communicate your data to others |
| Required Readings     |- Wickham, H. and G. Grolemund. 2017. _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data._ O'Reilly. Chapter 28. |
|                       |- Gelman, Andrew and Antony Unwin. 2012. “Infovis and Statistical Graphics: Different Goals, Different Looks.” _Journal of Computational and Graphical Statistics_ 22(1): 2-28.  |
|                       |- [Plotly](https://plot.ly/r/)           |
|                       |- [Shiny](http://shiny.rstudio.com/)     |
| Additional Readings   |                                         |

| Session 12: 27.11.2017 | Guest Lecture – Work of a Data Scientist              |
|-----------------------|--------------------------------------------------------|
| Aim                   | Learn about the job of a data scientist                |
| Required Readings     |- DataCamp Blog. 2017. [The Periodic Table of Data Science](https://www.r-bloggers.com/the-periodic-table-of-data-science/). R-bloggers.com |
| Additional Readings   |                                                        |
