#* @param tipo Tipo de comida
#* @get /Restaurantes
#* @apiTitle Restaurantes en NYU
#* @apiDescription Filtro los restaurantes de NY segun el tipo de comida
f<-function(tipo=''){
  library(dplyr)
  uno<-df%>%
    filter(Catagory==tipo)%>%
    count()
  uno<-uno[1]
  list(paste0("En NY hay '", uno, "' restaurantes que sirven comida de tipo '", tipo))
}

#* @param domicilio Domicilio
#* @param tipo Tipo de comida
#* @get /Restaurantes2
#* @apiTitle Restaurantes en NYU2
#* @apiDescription Filtro los restaurantes de NY segun el tipo de comida y si sirven a domicilio o no


h<-function(domicilio,tipo){
  dos<-df%>%
    filter(Online.Order==domicilio & Catagory==tipo)%>%
    count()
  dos<-dos[1]
  list(paste0("En NY hay '", dos, "' restaurantes que sirven comida de tipo '", tipo,'y llevan comida a domicilio'))
}
