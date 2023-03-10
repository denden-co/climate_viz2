read_csv("GLB.Ts+dSST.csv",skip=1, na="***")%>%
    select(year=Year,t_diff= `J-D`) %>%
ggplot(aes(x=year,y=t_diff)) +
    geom_line(color="gray",size=0.5)+
    geom_point(fill="white",color="gray",shape=21)+
    geom_smooth(se=FALSE, color="black",size=0.5,span=0.15)+
scale_x_continuous(breaks=seq(1880,2023,20)expand=c(0,0))+
    scale_y_continuous(limits=c(-0.5, 1.5)expand=c(0,0))+
    labs(
        x="YEAR",
        y="temperature anomaly (C)",
        title
    )
         theme_light()+
             theme(
                 axis.ticks=element_blank()
        
ggsave("figures/temperture_index_plot.png",width=6,height=4)
