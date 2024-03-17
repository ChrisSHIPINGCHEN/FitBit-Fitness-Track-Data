# FitBit-Fitness-Track-Data
 
 ![image](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/assets/163215140/6c5dc4b4-a148-4245-b5ce-a400a1134c74)

 
This Repository is the case study of my  Google Data Analytics Professional Certificate

Introduction

In this case study, I will perform real-world tasks of a junior data analyst for Bellabeat, a high-tech manufacturer of health-focused products for women and meet different characters and team members. 
In order to answer the key business questions, I will follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share and Act.
 


Tools: R(RStudio)

Step 1: Ask
There are two questions has been asked.

What is the problem you are trying to solve?

Investigate some health smart device usage trends and understand how these trends affect Bellabeat consumers. 

How can your insights drive business decisions?

Analyzing how these trends can help Bellabeat make better business strategies.

Step 2: Prepare

The data source used for this case study is from [here](https://www.kaggle.com/datasets/arashnic/fitbit). This dataset is downloaded from Kaggle where it was uploaded by Möbius. 
There is 11 csv file on this dataset, however, I only use 4 csv file to finish this case study.

Steps 3: Process

All R code can be found [here](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/blob/main/Case_study02.R).

  1. load the tidyverse, lubridate, dplyr and janitor packages and import the data files
     
  3. Check the data files and data type
     
  5. Convert Character format to Date type

![image](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/assets/163215140/0fa35b0d-6c0c-4735-9f9f-38550a2dc5a3)


  5. Creating day of week column as it is used in the analysis

![image](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/assets/163215140/d722c192-a496-4ebc-b3a6-29f6c45a0093)

  7. Summary of all the data


![image](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/assets/163215140/37927c74-be7d-4216-ba15-a03689bacdba)

Step 4:  Analyze and Share

![image](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/assets/163215140/ae7e71c6-6517-4b84-b474-29522bfd43e1)

The Bar chart shows that people are more likely to walk on Tuesday, Wednesday, Thursday, and Saturday. Therefore, we can promote exercise on lightly active days to encourage people to exercise.


![image](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/assets/163215140/1cd6312e-6bd3-4032-9b86-d34ad0bc517d)


The diagram above shows that although some people may not immediately fall asleep when they get into bed, most people have good sleeping habits. For those who do not have sound sleep habits, we can notice that it's time to sleep when the app detects they get in bed—and showing them the historical sleep data to make them aware of how less sleep time can damage their health.


![image](https://github.com/ChrisSHIPINGCHEN/FitBit-Fitness-Track-Data/assets/163215140/5709f673-de21-4c6b-bf66-7ede34125605)

The pie chart shows the percentage of each activity; we can see that few people are very active. Most people are spending too much time sedentary. Therefore, the app can notice them standing up or stretching for a while when it detects users sitting too much time.

Step 5: Act

Conclusion

The analysis of FitBit Fitness Tracker Data revealed insightful trends in the health and activity patterns of users, particularly in terms of walking habits, sleep quality, and activity levels. Key findings include:

Users tend to be more active on Tuesdays, Wednesdays, Thursdays, and Saturdays, suggesting a mid-week peak in physical activity.
Sleep data indicates that while some individuals struggle to fall asleep immediately after going to bed, the majority demonstrate good sleep hygiene. However, there's a noticeable opportunity to aid those with less optimal sleep patterns.
Activity data showcases a concern with sedentarism, as a significant portion of users spend too much time in sedentary activities, with a minimal percentage engaging in very active behaviors.

Recommendations

To leverage these insights for enhancing Bellabeat’s product offerings and supporting business strategies, the following recommendations are made:

Targeted Activity Encouragement: Develop features within Bellabeat’s app to promote increased activity on less active days, leveraging the insight that activity levels peak mid-week. This can include personalized notifications or challenges aimed at encouraging physical activity throughout the week, with special emphasis on the weekends and Mondays, where activity levels might naturally dip.

Sleep Hygiene Support: Implement features that support better sleep habits among users. This can include reminders to start winding down based on typical sleep times, personalized sleep hygiene tips, and features that allow users to track the impact of their sleep patterns on their overall health and activity levels. For those struggling with sleep, offering guided relaxation exercises or sleep meditation could be beneficial.

Sedentary Behavior Alerts: Address the high levels of sedentary behavior by introducing periodic reminders for users to stand up, stretch, or engage in short, active breaks throughout the day. These notifications can be customized based on the user’s activity patterns to encourage more consistent movement, especially for users who have extended periods of inactivity.

Data-Driven Personalization: Utilize the insights from the data to offer more personalized health and wellness recommendations. By understanding a user’s typical activity patterns, sleep quality, and sedentary behavior, Bellabeat can tailor suggestions, challenges, and support to fit each user's lifestyle, potentially increasing engagement and effectiveness of the products.

Community and Motivation: Foster a community within the Bellabeat app where users can share their successes, challenges, and tips for maintaining an active lifestyle and good sleep habits. Peer support can be a powerful motivator, and community challenges can encourage participation and adherence to health goals.

In summary, the analysis of FitBit Fitness Tracker Data presents a valuable opportunity for Bellabeat to enhance its product offerings and strategies by addressing key areas of physical activity, sleep quality, and sedentary behavior. By leveraging these insights, Bellabeat can further its mission to support women in achieving their health and wellness goals, ultimately driving better business outcomes through a more engaged and healthy user base.




