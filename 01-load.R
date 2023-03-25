library(tidyverse)
library(showtext)
library(ggpattern)

font_path <- "C:/Windows/Fonts"
font_extra_path <- "C:/Users/duykh/AppData/Local/Microsoft/Windows/Fonts"
font_add("Latin Modern",
  regular = paste(font_extra_path, "lmroman10-regular-webfont.ttf", sep = "/"),
  bold = paste(font_extra_path, "lmroman10-bold-webfont.ttf", sep = "/"),
  bolditalic = paste(font_extra_path, "lmroman10-bolditalic-webfont.ttf", sep = "/"),
  italic = paste(font_extra_path, "lmroman10-italic-webfont.ttf", sep = "/")
)
font_add("Times New Roman",
  regular = paste(font_path, "times.ttf", sep = "/"),
  bold = paste(font_path, "timesbd.ttf", sep = "/"),
  bolditalic = paste(font_path, "timesbi.ttf", sep = "/"),
  italic = paste(font_path, "timesi.ttf", sep = "/"),
)
showtext_auto()
# showtext_opts(dpi=300)

theme_set(theme_bw())

data <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1OZEZTo0idK2KB1fZRYxOmvXQDOYSZefgxfATsENYtCw/edit#gid=1676279497")
