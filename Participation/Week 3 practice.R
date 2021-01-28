remotes::install_github("bwiernik/progdata@main")
library(ggplot2)
library(gapminder)
ggplot(gapminder, aes(gdpPercap, lifeExp)) +
  geom_point(alpha = 0.1) +
  scale_x_log10("GDP per capita", labels = scales::dollar_format()) +
  theme_bw() +
  ylab("Life Expectancy")

install.packages("learnr")
library(learnr)
1


progdata::tutorial_ggplot()
