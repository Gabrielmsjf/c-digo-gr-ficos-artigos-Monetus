 Dest_Deb <- data.frame(c("Capital de giro",
                          "Investimento em Infraestrutura",
                          "Investimento imobilizado",
                          "Investimento participação societária",
                          "Não possui / Não informado",
                          "Recompra ou resgate de debêntures",
                          "Refinanciamento de passivo"),
                        c(41,16.1,0.3,5.1,4.4,6.7,26.4))
 
 cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

  ggplot(Dest_Deb, aes(Dest_Deb$c..Capital.de.giro....Investimento.em.Infraestrutura....Investimento.imobilizado...,
                     Dest_Deb$c.41..16.1..0.3..5.1..4.4..6.7..26.4.,
                     fill=Dest_Deb$c..Capital.de.giro....Investimento.em.Infraestrutura....Investimento.imobilizado...)) +
   geom_bar(stat = "identity", fill = c("#00334d", "#3366ff", "#002699", "#809fff", "#9966ff", "#0077b3", "#66ccff"), alpha=0.6, colour="white") +
    coord_flip() + 
    guides(fill=FALSE) + 
    geom_text(aes(label=Dest_Deb$c.41..16.1..0.3..5.1..4.4..6.7..26.4.), vjust=0.5, size=4, hjust=-0.1) +
   theme_light() + theme(axis.title.x = element_blank(), axis.title.y = element_blank()) + 
   ggtitle("% destinaçao dos recursos captados atraves emissao de debentures - Jananeiro a Maio de 2019") 
 