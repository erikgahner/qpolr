library("tidyverse")
library("bookdown")
library("knitr")

render_book('index.Rmd', 
            'all', 
            config_file = "_bookdown.yml")

