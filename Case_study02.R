#loading packages
library(tidyverse)
library(lubridate)
library(dplyr)
library(janitor)
library(skimr)

#import files
daily_Activity <- read.csv("C:/Users/12091/Desktop/Case_Study_02/dailyActivity_merged.csv")
daily_Calories <- read.csv("C:/Users/12091/Desktop/Case_Study_02/dailyCalories_merged.csv")
daily_Sleep <- read.csv("C:/Users/12091/Desktop/Case_Study_02/sleepDay_merged.csv")
weight_Log <- read.csv("C:/Users/12091/Desktop/Case_Study_02/weightLogInfo_merged.csv")


#Explore tables
head(daily_Activity)
head(daily_Calories)
head(daily_Sleep)
head(weight_Log)

#check data types
str(daily_Activity)
str(daily_Calories)
str(daily_Sleep)
str(weight_Log)

#Convert Character format to Date type
daily_Activity <- daily_Activity %>%
  mutate(ActivityDate = as.Date(ActivityDate, format = "%m/%d/%Y"))

daily_Sleep <- daily_Sleep %>%
  mutate(SleepDay = as.Date(SleepDay, format = "%m/%d/%Y"))

#check the data type
str(daily_Activity)
str(daily_Sleep)

#Creating day of week column as it is used in the analysis
daily_Activity$day_of_week <- format(daily_Activity$ActivityDate,"%A")

#check the is new column has been added
head(daily_Activity)

#Create summary
daily_Activity %>%  
  select(TotalSteps,
         SedentaryMinutes,
         VeryActiveMinutes) %>%
  summary()
daily_Sleep %>%  
  select(TotalMinutesAsleep,
         TotalTimeInBed) %>%
  summary()
weight_Log %>%  
  select(WeightKg,
         BMI) %>%
  summary()

#Bar chart 
daily_Activity$day_of_week <- wday(daily_Activity$ActivityDate, label = T, abbr = T)
ggplot(data = daily_Activity) + aes(x = day_of_week, y = TotalSteps) + 
  geom_col(fill =  'green') + labs(x = 'Day of Week', y = 'Total Steps', title = 'Total Steps in a Week')

#	Line Graphs and Scatter Plots
ggplot(daily_Sleep, aes(x = TotalMinutesAsleep, y = TotalTimeInBed)) +
  geom_point(size = 1) +
  geom_smooth(mapping = aes(x = TotalMinutesAsleep, y = TotalTimeInBed))+
  labs(x = "Total Minutes Asleep", y = "Total Time in Bed", title = "Total Sleep Data") +
  theme_minimal()

#pie chart, before to it we need to get percentage of each activity distribution
mean_activity_minutes <- daily_Activity %>% summarise(sedentary_avg_minute = mean(SedentaryMinutes),
                                                      lightly_avg_minutes = mean(LightlyActiveMinutes),
                                                      fairly_avg_minutes = mean(FairlyActiveMinutes),
                                                      very_avg_minutes = mean(VeryActiveMinutes)) %>% 
  mutate(sedentary_avg_minute = round(sedentary_avg_minute),
         lightly_avg_minutes =  round(lightly_avg_minutes),
         fairly_avg_minutes = round(fairly_avg_minutes),
         very_avg_minutes = round(very_avg_minutes))
activity_avg_long <- tidyr::gather(mean_activity_minutes)

# Calculate percentages
activity_avg_long$percentage <- activity_avg_long$value / sum(activity_avg_long$value) * 100

#Create Pie Chart
my_colors <- c("#66c2a5", "#fc8d62", "#8da0cb", "#e78ac3")
ggplot(activity_avg_long, aes(x = "", y = value, fill = key)) +
  geom_bar(stat = "identity", width = 1, color = "white", size = 1) +
  geom_text(aes(label = sprintf("%.1f%%", percentage)),
            position = position_stack(vjust = 0.5),
            color = "white",
            size =5) +
  coord_polar(theta = "y") +
  theme_void() +
  theme(
    legend.position = "bottom",
    legend.title = element_blank(),
    legend.text = element_text(size = 10),
    plot.title = element_text(hjust = 0.5,vjust = -4, size = 18, face = "bold"), 
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    panel.grid = element_blank(),
    panel.border = element_blank()
  ) +
  scale_fill_manual(values = my_colors) +
  labs(title = "Activity Distribution")


