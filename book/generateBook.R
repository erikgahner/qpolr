library("tidyverse")
library("bookdown")
library("knitr")
library("tidylog")
library("pageviews")
library("gvlma")
library("equatiomatic")
library("thesisdown") #remotes::install_github("ismayc/thesisdown")
library("gtrendsR")
library("trendyy")

render_book('index.Rmd', 
            'all', 
            config_file = "_bookdown.yml")
