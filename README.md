# Code-Chunk
This is a code chunk I wrote to create a visualization of data on Blue Jays including their head length, body mass, sex, and skull size.

```
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
```

![image](https://user-images.githubusercontent.com/122941467/236639774-3978c2f5-adc9-4da2-989a-1c6de487e09e.png)

