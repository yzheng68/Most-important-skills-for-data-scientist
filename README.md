# Introduction

This project performs an analysis of “data scientist” jobs listed on some major job boards including indeed and stackoverflow, and on the employment pages of some major pharmaceutical companies, such as Merck,Roche,and Sanofi. The objective of this project is to understand the most common skills that employers need for data science related jobs,and identify the most unique skills that employers need for data science related jobs as compared with other jobs, also identify the types of companies that employ the most data scientists. 

# Data description

Indeed: Indeed is one of the largest and well-known job board. It is a general board with postings across a broad range of industries. I used its [advance search interface] (https://www.indeed.com/advanced_search?q=Data+Scientist&l=Chicago%2C+IL&sort=date), and put Data Scientist and limit=50 (show 50 job listings on each page) as my criteria. Then it directs me to the first page of my searching result. I use the urls of the searching results, and implement rvest to scrape information incluing job titles, company name, location,summary of desired experience, and the job links. Then I loop through all the individual job link and scrape the corresponding job description. I scrape 853 data science related job from indeed website.  

Stackoverflow: Stackoverflow is a job board targeted for developers.Therefore, unlike traditional job board, such as indeed, it has more job listings from tech-company.I use "data science" and "analyst" as my searching keywords. Using the same procedure I described before, I scrape 323 data science/analyst related jobs.   


Merck;Sanofi;Roche webpage: Since I notice that Indeed and Stackoverflow have fewer listings from pharmaceutical companies, this may result in an undersample of data science jobs from the pharmaceutical industry. Therefore, I specifically scrape the data science related jobs from the webpages of Merck, Sanofi, and Roche, which are three of the top pharmaceutical companies worldwide. I scrape 15 data science related jobs from each company. 

# Data Processing 

I compiled all the scraped data into a large dataset named full_dat. After removing 19 duplicated jobs I have 1202 job listings in total. In order to extract job skills required for each job, I removed all the special character and convert all the capitalized words into lower-case words in the job scriptions I scraped from each individual job link. Then I created a list of job skills that are most commonly used in Data Scientist Job, including hadoop, python, sql, r, spar,sas,aws,excel,azure,java,tableau, deep learning, machine learning, AI,statistics,pandas, scipy, c++,perl,text mining, matlab, xml,hive,splunk,database,modeling, data mining, time series, jupyter, shell, unix, linex, API, cloud, apache, and swift. Then I used str_detect from stringr package to find a pattern match in each job description, I counted each skill once if a match is found. By doing this iterating over all jobs, I obtained a total count of each skill among all jobs.The following barplot shows the counts for each skill in descending order. It appears that R is the most common skills that employers need for data science related jobs, following by Java, C++, xml, and python. 

[![Rplot.png](https://s1.postimg.org/1eaibaq5fz/Rplot.png)](https://postimg.org/image/4g6ecirhmz/)

Then I break down the skill counts by industry. To extract industry information, I ...

