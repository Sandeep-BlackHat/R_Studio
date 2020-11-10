# Web Scraping
library(robotstxt)
path<-paths_allowed("https://www.imdb.com/search/title/?groups=top_250&sort=user_rating")
library(rvest)
library(dplyr)

link<-"https://www.imdb.com/search/title/?groups=top_250&sort=user_rating"
web<-read_html(link)
Name<-web %>% html_nodes(".lister-item-header a")%>%html_text()
View(Name)

year<-web %>% html_nodes(".text-muted.unbold")%>%html_text()
View(year)
rating<-web%>%html_nodes(".ratings-imdb-rating strong")%>%html_text()
View(rating)
duration<-web%>%html_nodes(".runtime")%>%html_text()
View(duration)
imdb.ratings<-data.frame(Name,year,rating,duration)
View(imdb.ratings)
write.csv(imdb.ratings,"My_movie data.csv")

- - - -
