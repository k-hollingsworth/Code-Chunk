load("blue_jays.rda")

summary(blue_jays$Skull)

skullfilter$blue_jays = ifelse(x<30, '28', ifelse(30.01<x<31.5, '30',ifelse(31.51<x<32.5, '32', ifelse(x<32.5, '34')))))

birdplot = ggplot(blue_jays, aes(x = Mass, y = Head)) +
  geom_point(aes(size = Skull, color = KnownSex)) +
  scale_size(name = "skull size (mm)", 
             range = c(0.7, 5),
             breaks = c(29, 30, 32, 33),
             labels = c('28', '30','32','34'),
             guide = guide_legend(
               direction = "horizontal",
               title.position = "top")) +
  scale_color_manual(name = 'sex',
                     values = c("M" = "steelblue4",
                                "F" = "orangered3"),
                     labels = c('M' = "male",
                                'F' = "female"),
                     guide = guide_legend(
                       direction = "horizontal",
                       title.position = "top",
                       override.aes = list(size = 3)))+
  scale_y_continuous(
    breaks = seq(52, 60, 2))+
  theme_bw() +
  labs(x = "body mass (g)", y = "head length (mm)") +
  theme(legend.position = "top",
        legend.justification = "right",
        legend.title.align = 0.5,
        panel.border = element_rect(color = "white"),
        axis.title.x = element_text(face = "bold"),
        axis.title.y = element_text(face = "bold"),
        legend.title = element_text(face = "bold"))
plot(birdplot)
