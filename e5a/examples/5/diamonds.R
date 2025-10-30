library(tidyverse)

View(diamonds)

# Boxplot of diamond price by cut quality
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_boxplot(outlier.alpha = 0.25)

# Change y-axis to log10 scale
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_boxplot(outlier.alpha = 0.25) +
  scale_y_log10()

# Add titles and labels
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_boxplot(outlier.alpha = 0.25) +
  scale_y_log10() +
  labs(
    title = "Diamond Price by Cut Quality",
    x = "Cut Quality",
    y = "Price (log scale)"
  )

# Violin plot instead of box plot
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_violin() +
  scale_y_log10() +
  labs(
    title = "Diamond Price by Cut Quality",
    x = "Cut Quality",
    y = "Price (log scale)"
  )

# Violin + box
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_violin() +
  geom_boxplot(width = 0.1, color = "gray70") +
  scale_y_log10() +
  labs(
    title = "Diamond Price by Cut Quality",
    x = "Cut Quality",
    y = "Price (log scale)"
  )

# Facet by color
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_violin() +
  geom_boxplot(width = 0.1, color = "gray70") +
  scale_y_log10() +
  labs(
    title = "Diamond Price by Cut Quality and Color",
    x = "Cut Quality",
    y = "Price (log scale)"
  ) +
  facet_wrap(~color)

# add mean
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_violin() +
  geom_boxplot(width = 0.1, color = "gray70") +
  stat_summary(fun = mean, geom = "point", shape = 1) +
  scale_y_log10() +
  labs(
    title = "Diamond Price by Cut Quality and Color",
    x = "Cut Quality",
    y = "Price (log scale)"
  ) +
  facet_wrap(~color)

# Facet by color and clarity
ggplot(diamonds, aes(cut, price, fill = cut)) +
  geom_violin() +
  geom_boxplot(width = 0.1, color = "gray70") +
  stat_summary(fun = mean, geom = "point", shape = 1) +
  scale_y_log10() +
  labs(
    title = "Diamond Price by Cut Quality and Color",
    x = "Cut Quality",
    y = "Price (log scale)"
  ) +
  facet_grid(color ~ clarity)

# Scatter plot of price vs carat, colored by cut
ggplot(diamonds, aes(carat, price, color = cut)) +
  geom_point(alpha = 0.2) +
  scale_y_log10() +
  labs(
    title = "Diamond Price vs Carat Weight",
    x = "Carat Weight",
    y = "Price (log scale)",
    color = "Cut Quality"
  ) +
  facet_grid(cut ~ color)
