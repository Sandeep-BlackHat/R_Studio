library(robotstxt)
path<-allowed("https://myanimelist.net/topanime.php")
path<-path_allowed("https://myanimelist.net/topanime.php")
path<-paths_allowed("https://myanimelist.net/topanime.php")
web<-read_html(link)
link<-"https://myanimelist.net/topanime.php"
web<-read_html(link)
web<-read_html(link)
web<-read_html(https://myanimelist.net/topanime.php)
library(robotstxt)
path<-paths_allowed("https://myanimelist.net/topanime.php")
library(rvest)
library(dplyr)
link<-"https://myanimelist.net/topanime.php"
web<-read_html(link)
Name<-web %>% html_nodes(".lister-item-header a")%>%html_text()
View(Name)

library(robotstxt)
path<-paths_allowed("path<-paths_allowed("https://www.imdb.com/search/title/?groups=top_250&sort=user_rating)
path<-paths_allowed("https://www.imdb.com/search/title/?groups=top_250&sort=user_rating")
library(rvest)
library(dplyr)
link<-"https://www.imdb.com/search/title/?groups=top_250&sort=user_rating"
web<-read_html(link)
Name<-web %>% html_nodes(".lister-item-header a")%>%html_text()
View(Name)
year<-web %>% html_nodes(".text-muted.unbold")%>%html_text()
rating<-web%>%html_nodes(".ratings-imdb-rating strong")%>%html_text()
duration<-web%>%html_nodes(".runtime")%>%html_text()
imdb.ratings<-data.frame(Name,year,rating,duration)
View(imdb.ratings)
write.csv(imdb.ratings,"My_movie data.csv")
source('~/.Rhistory', encoding = 'UTF-8')
