Prazos_deb <- data.frame(c("0 a 3 anos", "4 a 6 anos", "7 a 9 anos", "10 anos ou mais"),
                         c(16.7, 47, 23.5, 12.9))

ggplot(Prazos_deb, aes(x = Prazos_deb$c..0.a.3.anos....4.a.6.anos....7.a.9.anos....10.anos.ou.mais..,
                       y = Prazos_deb$c.16.7..47..23.5..12.9.,
                       fill = Prazos_deb$c..0.a.3.anos....4.a.6.anos....7.a.9.anos....10.anos.ou.mais..)) + 
  geom_bar(stat = "identity", fill = c("#80bfff", "#66cc66", "#009999", "#d9b38c"), colour="#f2f2f2",  alpha=1) + guides(fill = FALSE) +
  geom_text(aes(label = Prazos_deb$c.16.7..47..23.5..12.9., vjust=1.4)) + theme_light() +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank()) + 
  ggtitle("% debentures por prazo de vencimento - janeiro a maio de 2019") + scale_x_discrete(limits=c("0 a 3 anos", "4 a 6 anos", "7 a 9 anos", "10 anos ou mais" ))
  
