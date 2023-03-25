library(ggthemes)

data |>
  select(main_social_network) |>
  count(main_social_network) |>
  mutate(percent = round(n / sum(n) * 100.0)) |>
  ggplot(aes(x = "", y = n)) +
  coord_polar(theta = "y", start = 0) +
  ggpattern::geom_bar_pattern(
    aes(
      pattern = main_social_network,
      pattern_angle = main_social_network,
      fill = main_social_network
    ),
    stat = "identity",
    pattern_fill = "white",
    pattern_color = "transparent",
    linewidth = 1,
    colour = "white",
    pattern_density = 0.1
  ) +
  geom_text(
    aes(x = 1.6, label = paste(percent, "%", sep = ""), group = main_social_network),
    position = position_stack(vjust = 0.5),
    family = "Times New Roman",
    size = 5
  ) +
  guides(
    pattern = guide_legend(reverse = TRUE, title = "Mạng xã hội"),
    pattern_angle = guide_legend(reverse = TRUE, title = "Mạng xã hội"),
    fill = guide_legend(reverse = TRUE, title = "Mạng xã hội")
  ) +
  labs(
    title = "Tỉ lệ các ứng dụng mạng xã hội được sử dụng nhiều nhất"
  ) +
  theme_void() +
  theme(text = element_text(family = "Times New Roman")) +
  scale_fill_colorblind()

ggsave("what-social-network.png")
