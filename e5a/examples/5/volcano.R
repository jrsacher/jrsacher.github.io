library(tidyverse)

View(volcano)

# Convert matrix to tibble
# Use parse_number to convert x from "V1", "V2", ... to numeric
volcano_df <- as.data.frame(volcano) |>
  mutate(y = row_number()) |>
  pivot_longer(-y, names_to = "x", values_to = "height") |>
  mutate(x = parse_number(x))

View(volcano_df)

# "default" plot with geom_point
ggplot(volcano_df, aes(x, y, color = height)) +
  geom_point()

# Slightly better color
ggplot(volcano_df, aes(x, y, color = height)) +
  geom_point() +
  scale_color_viridis_c()

# Potentially better with geom_raster, but still squares
ggplot(volcano_df, aes(x, y, fill = height)) +
  geom_raster() +
  scale_fill_viridis_c()

# Approximate topographical with geom_contour
ggplot(volcano_df, aes(x, y, z = height)) +
  geom_contour()

# Show how binwidth affects contours
ggplot(volcano_df, aes(x, y, z = height)) +
  geom_contour(binwidth = 5)

# Filled contours
ggplot(volcano_df, aes(x, y, z = height)) +
  geom_contour_filled()

# Add titles and labels, fix looks
ggplot(volcano_df, aes(x, y, z = height)) +
  geom_contour_filled() +
  labs(
    title = "Topography of Maunga Whau (Auckland Volcano)",
    x = "X coordinate",
    y = "Y coordinate",
    fill = "Elevation"
  ) +
  theme_bw() +
  theme(panel.grid = element_blank())

# re-add contour level lines
ggplot(volcano_df, aes(x, y, z = height)) +
  geom_contour_filled() +
  geom_contour(color = "black", linewidth = 0.2) +
  labs(
    title = "Topography of Maunga Whau (Auckland Volcano)",
    x = "X coordinate",
    y = "Y coordinate",
    fill = "Elevation"
  ) +
  theme_bw() +
  theme(panel.grid = element_blank())

# Don't squish the plot
ggplot(volcano_df, aes(x, y, z = height)) +
  geom_contour_filled() +
  geom_contour(color = "black", linewidth = 0.2) +
  labs(
    title = "Topography of Maunga Whau (Auckland Volcano)",
    x = "X coordinate",
    y = "Y coordinate",
    fill = "Elevation"
  ) +
  coord_fixed() +
  theme_bw() +
  theme(panel.grid = element_blank())
