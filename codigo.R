df<-read.csv('trip advisor restaurants.csv')
head(df)
colnames(df)
#informe de cuantos restaurantes hay para un determinado tipo de comida

f<-function(tipo){
  uno<-df%>%
    filter(Catagory==tipo)%>%
    count()
  uno<-uno[1]
  return(uno)
}
f('Italian, Pizza')


f<-function(tipo=''){
  library(dplyr)
  uno<-df%>%
    filter(Catagory==tipo)%>%
    count()
  uno<-uno[1]
  list(paste0("En NY hay '", uno, "' restaurantes que sirven comida de tipo '", tipo))
}

f('Italian, Pizza')
#filtro de selección de restaurantes que incluya la opción de seleccionar que dispongan de servicio de domicilio.
f<-function(domicilio,tipo){
  dos<-df%>%
    filter(Online.Order==domicilio & Catagory==tipo)%>%
    count()
  return(dos)
}

f('Yes','Italian, Pizza')

