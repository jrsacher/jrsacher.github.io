library(tidyverse)

View(mpg)

# Default point plot
ggplot(mpg, aes(displ, hwy, color = drv)) +
  geom_point()

# Increase point size, reduce alpha to show overlap
ggplot(mpg, aes(displ, hwy, color = drv)) +
  geom_point(size = 2, alpha = 0.5)

# Add trend line (linear model, no confidence interval)
ggplot(mpg, aes(displ, hwy, color = drv)) +
  geom_point(size = 2, alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE)

# Facet by vehicle class
ggplot(mpg, aes(displ, hwy, color = drv)) +
  geom_point(size = 2, alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~class)

# Add titles and labels
ggplot(mpg, aes(displ, hwy, color = drv)) +
  geom_point(size = 2, alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~class) +
  labs(
    title = "Engine Size vs Highway MPG",
    subtitle = "Bigger engines tend to get lower MPG\npatterns differ by drive type and class",
    x = "Engine displacement (liters)",
    y = "Highway MPG",
    color = "Drive"
  )
