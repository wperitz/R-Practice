# Histogram


dat = read.csv("MSDS-Orientation-Computer-Survey.csv")


dat_filtered <- dat %>%
  filter(CPU.Cycle.Rate..in.GHz. <= 10)

ggplot(dat_filtered, aes(x = CPU.Cycle.Rate..in.GHz.)) +
  geom_histogram(binwidth = 0.2, fill = "cornflowerblue", color = "lightblue") +
  ggtitle("CPU Cycle Rate in GHz for Residential MSDS Students") +
  xlab("CPU Cycle Rate (GHz)") +
  ylab("Frequency") +
  theme_linedraw() + 
  theme(
    plot.title = element_text(hjust = 0.5), # Centering the title horizontally
    panel.border = element_blank(),  # Remove panel borders
    panel.grid.major = element_line(color = "gray", size = 0.15),  # Customize major gridlines with size = 1 (bold)
    panel.grid.minor = element_line(color = "gray", size = 0.15)   # Customize minor gridlines with size = 0.5
  )

