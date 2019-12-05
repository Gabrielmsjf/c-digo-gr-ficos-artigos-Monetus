ggplot(destinacao, aes(x = destinacao$Destinação, y = destinacao$jan.abr.2019, fill=destinacao$Destinação)) + 
  geom_bar(stat="identity") + coord_flip() + guides(fill=FALSE) + theme(axis.title.x = element_blank(), axis.title.y = element_blank()) +
  scale_fill_brewer(palette = "Dark2") + 
  
  
       
