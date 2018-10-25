drug_use %>% 
  filter(age %in% c('18', '19', '20', '21', '22-23')) %>% 
  gather('drug', 'usage', alcohol_use, marijuana_use, cocaine_use) %>% 
  ggplot(data = .)+
  geom_bar(aes(x = drug, y = usage), stat = 'identity')+facet_wrap(~age)+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
