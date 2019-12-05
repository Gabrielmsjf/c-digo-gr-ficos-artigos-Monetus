rendi_deb <- data.frame(c("% do DI", "DI + Spread", "IPCA + spread", "Outros"),
                        c(42.5, 38.8, 18.5, 0.2))

ggplot(rendi_deb, aes(x = rendi_deb$c....do.DI....DI...Spread....IPCA...spread....Outros..,
                      y = rendi_deb$c.42.5..38.8..18.5..0.2.,
                      fill= rendi_deb$c....do.DI....DI...Spread....IPCA...spread....Outros..)) +
  geom_bar(stat = "identity", fill = c("#80aaff", "#6fdc6f", "#ff751a", "#00b3b3"), alpha = 0.9, colour = "gray") + 
  guides(fill = FALSE) + 
  geom_text(aes(label = rendi_deb$c.42.5..38.8..18.5..0.2.), vjust = -0.3, hjust = 0.5, size = 4.5) +
  ggtitle("% debentures por tipo de rendimento - janeiro a maio de 2019") +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank()) 
