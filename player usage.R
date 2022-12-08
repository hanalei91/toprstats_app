library(cfbfastR)
library(cfbplotR)
library(tidyverse)
library(dplyr)

#Player Usage---------------------------------------------

player_usage22 <- cfbfastR::cfbd_player_usage(year = 2022)
player_usage21 <- cfbfastR::cfbd_player_usage(year = 2021)
player_usage20 <- cfbfastR::cfbd_player_usage(year = 2020)
player_usage19 <- cfbfastR::cfbd_player_usage(year = 2019)
player_usage18 <- cfbfastR::cfbd_player_usage(year = 2018)
player_usage17 <- cfbfastR::cfbd_player_usage(year = 2017)
player_usage16 <- cfbfastR::cfbd_player_usage(year = 2016)
player_usage15 <- cfbfastR::cfbd_player_usage(year = 2015)
player_usage14 <- cfbfastR::cfbd_player_usage(year = 2014)

player_usage <- list(player_usage22,player_usage21,player_usage20,
                     player_usage19,player_usage18,player_usage17,
                     player_usage16,player_usage15,player_usage14)%>%
  reduce(full_join,by=c("season","name","team","position",
                        "usg_1st_down","usg_2nd_down","usg_3rd_down",
                        "usg_standard_downs","usg_passing_downs",
                        "usg_overall"))%>%
  select(season,name,team,position,usg_1st_down,usg_2nd_down,usg_3rd_down,
         usg_standard_downs,usg_passing_downs,usg_overall)
