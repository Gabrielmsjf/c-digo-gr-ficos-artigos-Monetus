#create a data frame

Fund_Mult <- data.frame("Tipos de Fundos" = c("Balanceado", "Dinamico", "Capital Protegido", "L/S Neutro", "L/S Direcional", "Macro", 
                                            "Trading", "Livre", "Juros e Moeda", "Especifica", "Exterior"), rentabilidade =
                        c(9.21, 8.5, 7.38, 7.34, 11.3, 5.59, 8.95, 8.38, 6.82, 10.80, 7.9))

mean(Fund_Mult$rentabilidade)

ggplot(Fund_Mult, aes(x=Fund_Mult$Tipos.de.Fundos, y=Fund_Mult$rentabilidade, fill = Fund_Mult$Tipos.de.Fundos,)) + 
  geom_bar(colour="gray", stat = "identity") + guides(fill = FALSE) + 
  coord_flip() + 
  scale_fill_brewer(palette = "Set3") +
  ggtitle("Rentabilidade Fundos Multimercados", subtitle = "Ultimos 12 meses - Data de referencia 15/05/2019") +
  scale_y_continuous(name="") + scale_x_discrete(name="") + 
  theme_linedraw() +
  geom_text(label = Fund_Mult$rentabilidade)
