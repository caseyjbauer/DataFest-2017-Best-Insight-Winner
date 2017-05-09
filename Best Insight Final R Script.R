#"Best Insight" Final R Document
#Usde/Important 80 lines of code (Out of 400 used during competition)

#Read In Data
master_list <- fread("data.txt")

#Adjusting Characters to Numbers
master_list$orig_destination_distance <- as.double(master_list$orig_destination_distance)

master_list$distance_band[master_list$distance_band == "VF"] <- 1
master_list$distance_band[master_list$distance_band == "F"] <- 2
master_list$distance_band[master_list$distance_band == "M"] <- 3
master_list$distance_band[master_list$distance_band == "C"] <- 4
master_list$distance_band[master_list$distance_band == "VC"] <- 5

master_list$hist_price_band[master_list$hist_price_band == "VH"] <- 1
master_list$hist_price_band[master_list$hist_price_band == "H"] <- 2
master_list$hist_price_band[master_list$hist_price_band == "M"] <- 3
master_list$hist_price_band[master_list$hist_price_band == "L"] <- 4
master_list$hist_price_band[master_list$hist_price_band == "VL"] <- 5

master_list$popularity_band[master_list$popularity_band == "VL"] <- 1
master_list$popularity_band[master_list$popularity_band == "L"] <- 2
master_list$popularity_band[master_list$popularity_band == "M"] <- 3
master_list$popularity_band[master_list$popularity_band == "H"] <- 4
master_list$popularity_band[master_list$popularity_band == "VH"] <- 5

master_list$distance_band <- as.numeric(master_list$distance_band)
master_list$hist_price_band <- as.numeric(master_list$hist_price_band)
master_list$popularity_band <- as.numeric(master_list$popularity_band)



#Getting Mobile vs. Computer Looks
mobil_looks <- master_list[is_mobile == 1]
computer_looks <- master_list[is_mobile == 0]

#Getting Mobile vs. Computer Package Looks
mobil_package_looks <- mobil_looks[is_package == 1]
computer_package_looks <- computer_looks[is_package == 0]


#Narrowing to Users who Booked
bookers <- master_list[is_booking == 1]

#Dividing Bookers by Platform
computer_converts <- bookers[is_mobile == 0]
mobil_converts <- bookers[is_mobile == 1]


#Average Price by Platform
mean(mobil_packages$hist_price_band)
mean(computer_packages$hist_price_band)

#Average Star by Platform
mean(mobil_packages$prop_starrating)
mean(computer_packages$prop_starrating)

#Average Distance from Center by Platform
mean(mobil_packages$distance_band)
mean(computer_packages$distance_band)

#Average Flight Distance by Platform
mean(mobil_packages$orig_destination_distance, na.rm = TRUE)
mean(computer_packages$orig_destination_distance, na.rm = TRUE)


#Key Insights:
  #Percentage of Computer lookers who looked at packages vs.
  #Percentage of Mobile lookers who looked at packages
#Magnified by:
  #Percentage of Computer package lookers who bought package vs.
  #Percentage of Mobile package lookers who bought package
#Further Magnified by:
  #Average Hotel Stars and Marginal Profit Capture of Computer Packages vs.
  #Average Hotel Stars and Marginal Profit Capture of Mobile Packages

#CONCLUSION:
#About 10-fold revenue oppurtunity if able to bridge these gaps

