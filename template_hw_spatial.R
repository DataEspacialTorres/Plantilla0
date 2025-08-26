rm(list = ls())
#setwd("~/GitHub/Plantilla0")

gpklink= "https://github.com/DataEspacialTorres/Plantilla0/raw/refs/heads/main/MapFromPython1.gpkg"
jsonlink="https://github.com/DataEspacialTorres/Plantilla0/raw/refs/heads/main/MapFromPython2.geojson"

library(sf)

map1=read_sf(gpklink, layer = "usa")
map2=read_sf(jsonlink)

library(ggplot2)
map1gg=ggplot() + theme_bw() + geom_sf(data = map1,fill='red', color='grey90')
map1gg

saveRDS(map1gg,file='map1.rds')



map2gg=ggplot() + theme_void() + geom_sf(data = map2)
map2gg
saveRDS(map2gg,file='map2.rds')

