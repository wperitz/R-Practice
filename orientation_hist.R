# Histogram

# read in data
dat = read.csv("MSDS-Orientation-Computer-Survey.csv")

# remove obvious outliers
dat_filtered <- dat %>%
  filter(CPU.Cycle.Rate..in.GHz. <= 10)

ggplot(dat_filtered, aes(x = CPU.Cycle.Rate..in.GHz.)) +
  # create histogram and edit colors
  geom_histogram(binwidth = 0.2, fill = "cornflowerblue", color = "lightblue") +
  
  # title and labels
   ggtitle("CPU Cycle Rate in GHz for Residential MSDS Students") +
  xlab("CPU Cycle Rate (GHz)") +
  ylab("Frequency") +
  
  # theme adjustments: center title, remove borders, edit gridlines
  theme_linedraw() + 
    theme(
    plot.title = element_text(hjust = 0.5), 
    panel.border = element_blank(),
    panel.grid.major = element_line(color = "gray", size = 0.15),  
    panel.grid.minor = element_line(color = "gray", size = 0.15)
  )

