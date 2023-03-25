data <- data |>
  rename(any_of(c(
    email = "Địa chỉ email",
    main_social_network = "Bạn sử dụng các nền tảng mạng xã hội nào thường xuyên nhất?"
  ))) |>
  mutate(
    main_social_network = factor(main_social_network, levels = c("Instagram", "YouTube", "Facebook"))
  ) |>
  filter(main_social_network != "Snapchat")


