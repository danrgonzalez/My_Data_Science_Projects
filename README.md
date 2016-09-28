# Welcome to my Data Science Github

I've uploaded several notebooks showcasing my recent Data Science projects. A brief description of the work and findings can be found below. 

Feel free to reach out if you have any questions on the code or methodology.

Email :    danrgonzalez@gmail.com

Follow me on:

twitter:   @ElDataScientist  
instagram: @ElDataScientist

## Simplifying the Metal Level Calculator

Proposed a simplified method by which Health Insurance Companies can assign Metal Levels to their plans. Publicly available data on health insurance rates and plan attributes was analyzed to build a supervised model. From a 170+ attribute/feature set, only a small subset was needed  to achieve over 90% accuracy in classifying into the correct Metal Level. From these models, a simplified method is proposed to assign Metal Levels to plans that only require a limited number of inputs versus the current method which requires a substantially larger plan attribute set.  

The ipython notebook shows all my pre-processing steps and the model selection and validation. 

## Legalese Detection

Recent California court rulings were utilized to train a supervised NLP model to identify sentences that most resemble legalese. The sentences can originate from any text. The model was tested on a twitter stream and was able to rank users who are most associated to the legal field. Namely, people like Nina Totenberg and Eric Holder score high, while Justin Bieber does not, as expected.

## Movie Recommendation Engine

I completed this project as part of my Masters in Data Science program. Several GraphLab (https://turi.com/) Recommendation engines were evaluated to arrive at the best recommender engine for this particular dataset. We downloaded the MovieLens movie ratings dataset to train our models and overcome the cold-start problem. Precision-Recall curves were utilized to evaluate and compare models. 

http://grouplens.org/datasets/movielens/

Apparently, Github can't handle the size of our rendered notebook to display here but you can download it and run it on any browser as an HTML. 

## SF Crime Activity Visualization with Processing

Created a time-lapse visualization to map over 800K data points based on San Francisco's crime activity. Processing is a Java based visualization tool.

The .pde files are Processing files containing the Java code for the visualizations. 

Learn more about Processing for Visuzalization: https://processing.org/

## Challenge 1

I was interviewing for a job recently and received this Challenge. We are essentially presented with unknown/anonymized explanatory variables and a binary target variable. We are to comment on any relationships. The notebook showcases my exploratory data analysis, data visualization, and modeling. 

## Challenge 2

This was another challenge, however, this one was part of a "Spot Recruitment" event. Essentially, if you impressed their team, you could get hired on the spot. Spoiler Alert! CEO wasn't there that day, so no one could get hired. I moved on to the next round but did not get the job.

The challenge here was a 3-way classification problem given 19 continuous variables and a target. We were given 1 hour to complete. 

I have two notebooks for this Challenge. The first is code that I wrote on the spot. The second is a re-work with h2o.ai's platform.
