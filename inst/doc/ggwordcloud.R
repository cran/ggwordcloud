## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE---------------------------------------------------------
#  install.packages("ggwordcloud")

## ---- eval=FALSE---------------------------------------------------------
#  devtools::install_github("lepennec/ggwordcloud")

## ------------------------------------------------------------------------
dat <- mtcars
dat$name <- row.names(mtcars)

## ------------------------------------------------------------------------
library(ggwordcloud)
set.seed(42)

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name)) + geom_text_wordcloud() + theme_minimal()

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name)) + geom_text_wordcloud() + theme_minimal()

## ------------------------------------------------------------------------
dat$size <- dat$mpg
dat$size[c(1,4)] <- dat$size[c(1,4)] + 100

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size)) + geom_text_wordcloud() +
  theme_minimal()

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size)) + geom_text_wordcloud() +
  scale_size(range = c(2,12)) +
  theme_minimal() 

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size)) + geom_text_wordcloud() +
  scale_size(range = c(4,20)) +
  theme_minimal() 

## ------------------------------------------------------------------------
dat$rot <- 90*(runif(nrow(dat))>.6)

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size, angle = rot)) +
  geom_text_wordcloud() +
  scale_size(range = c(2,12)) +
  theme_minimal() 

## ------------------------------------------------------------------------
dat$rot <- (-90+180*runif(nrow(dat)))*(runif(nrow(dat))>.2)

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size, angle = rot)) +
  geom_text_wordcloud()  +
  scale_size(range = c(2,12)) +
  theme_minimal() 

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size, angle = rot)) +
  geom_text_wordcloud()  +
  scale_size(range = c(2,12)) +
  theme_minimal() 

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size, angle = rot)) +
  geom_text_wordcloud(eccentricity = 1)  +
  scale_size(range = c(2,12)) +
  theme_minimal() 

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size, angle = rot)) +
  geom_text_wordcloud(eccentricity = .3)  +
  scale_size(range = c(2,12)) +
  theme_minimal() 

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(label = name, size = size, angle = rot)) +
  geom_text_wordcloud()  +
  scale_size(range = c(2,12)) +
  facet_wrap(~am) +
  theme_minimal() 

## ---- fig.width=7.5, fig.height=4----------------------------------------
ggplot(data = dat, aes(x = factor(am), label = name, size = size, angle = rot,
                       color = factor(am))) +
  geom_text_wordcloud()  +
  scale_size(range = c(2,12)) +
  theme_minimal() 

