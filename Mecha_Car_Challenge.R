#Deliverable 1
#Import
library(tidyverse)
library(dplyr)

#Import as a DataFrame
mecha_mpg<-read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform lm analysis
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#Create Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

#Deliverable 2
#Import
mecha_coil<-read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#Create Summary DataFrame
total_summary<-mecha_coil%>% summarize(Mean_PSI=mean(PSI),
                                       Median_PSI=median(PSI),
                                       Var_PSI=var(PSI),
                                       Std_Dev_PSI=sd(PSI),
                                       Num_Coil=n(), .groups = 'keep')

#Group By Summary
lot_summary<-mecha_coil%>%group_by(Manufacturing_Lot) %>%summarize(Mean_PSI=mean(PSI),
                                                                   Median_PSI=median(PSI),
                                                                   Var_PSI=var(PSI),
                                                                   Std_Dev_PSI=sd(PSI),
                                                                   Num_Coil=n(), .groups = 'keep')

#Deliverable 3
#Perform a t-test for all lots
t.test(mecha_coil$PSI,mu=1500)

#Perform a t-test on each lot
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
