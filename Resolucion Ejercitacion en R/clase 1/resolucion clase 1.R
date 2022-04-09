#Ejercicio 1: Calcular la media y mediana del vector x y el número de valores que 
#están por debajo de la media y de la mediana, siendo x:

x<-c(1,5,7,9,3,5,6,2,4,7,5,6,9,8,6,2,6,1,4)

media <- mean(x)
mediana <- median(x)
under_media <- length(x[x<media])
under_median <- length(x[x<mediana])


#Ejercicio 2: Escribir la función que calcula el módulo de un número real.

modulo <- function(num, fijo=0){
  return(abs(num)+fijo)
}

plot(-100:100, lapply(-100:100, function(x) modulo(num=x,fijo = -20)), type="l", xlab="x", ylab = "y", main="Función Módulo")


#Ejercicio 3: Usar for para hallar el resultado de dividir de manera consecutiva el número 1111 
#por los siguientes divisores (en este orden): 2, 3, 4, 5, 6.

num = 1111
result_vec <- lapply(2:6, function(x){
  result_scalar = num/x
  num = result_scalar
  return(result_scalar)})

num = 1111
for (i in 2:6){
  result_scalar = num / i
  cat(result_scalar, num , i, "\n")
  num = result_scalar
} 
#Ejercicio 4: Escribir una función que responda el signo del producto de dos 
#factores dado, es decir "Positivo", o "Negativo", y en el caso que el producto 
#sea 0 devuelva "Nulo".
signo <- function(a,b){
  return(ifelse(a*b>0,"positivo",
                ifelse(a*b<0,"negativo","nulo")))
}
lista <- c(-1,3,2,4,5,0,10,5,8,-1,9,0)

for (i in 1:(length(lista)%/%2)){
  a <- lista[i]
  b <- lista[(i+1)]
  cat("a: ",a,"b: ",b,"signo: ", signo(a,b),"\n")
}

#Ejercicio 5: Simular el lanzamiento de un dado.

dice <- function(size=1){
  return(sample(x = 1:6,size = size, replace=TRUE, prob =rep(1/6,6)))
}


#Ejercicio 6: Simular el lanzamiento de cuatro dados o de un mismo dado cuatro veces.

dice(4)

max_throws = 3000
plot(1:max_throws,lapply(1:max_throws, function(x) mean(dice(x))), type="l", xlab="N Throws", ylab="Average")

#Ejercicio 7: Supongamos una urna con 3 bolas blancas y 7 negras, simular la extracción de una
#bola (asignar, por ejemplo, el 1 a bola blanca y 0 a negra).

bolas_con_reemplazo <- function(size=1, probs = c(0.7,0.3)){
  return(sample(c(0,1), size=size, replace = T, prob = probs))

}


#Ejercicio 8: Simular 8 extracciones con reemplazo de la urna del ejercicio 7.
bolas_con_reemplazo(size=8)

max_throws = 3000
plot(1:max_throws,lapply(1:max_throws, function(x) mean(bolas_con_reemplazo(x))), 
     type="l", 
     xlab="Cant. Experimentos", 
     ylab="Proba", 
     main="Probabilidad Empírica Blanca")

#------------------------------------------
#Ejemplo: Índice de masa corporal infantil
#-------------------------------------------

# Cargo la base:
PACIENTE<-1:30
EDAD<-c(7, 7, 8, 7, 7, 10,7 ,7, 7 ,9, 9, 11, 7, 9,  9, 11, 12, 7, 11,  6,  8,  8,  7, 10,  7,  8, 10,  7,  9, 10)
SEXO<-c("M", "M", "M", "F", "M", "M" ,"M", "M", "M", "M", "M", "F", "M" ,"M" ,"F" ,"M", "M" ,"M" ,"M" ,"F" ,"F" ,"F", "F","F", "M" ,"M" ,"F", "F" ,"F" ,"M")  
PESO<-c(24.4, 23.6, 47.0, 24.0, 23.9, 41.0, 32.9, 22.4, 28.7, 31.4, 28.9, 51.2, 26.2, 58.5, 23.7, 25.5, 49.7, 39.6,42.5, 21.6, 38.0, 26.6, 20.4, 23.7, 21.4, 45.7, 51.3, 28.0, 26.9, 43.9)
TALLA<-c(1.2, 1.2, 1.4, 1.2, 1.2, 1.4, 1.3, 1.2, 1.3, 1.3, 1.3, 1.6, 1.3, 1.5, 1.3, 1.3, 1.7, 1.3, 1.5, 1.2, 1.3, 1.2, 1.2,1.3, 1.2, 1.4, 1.5, 1.3, 1.3, 1.5)
IMC<-c(16.94444, 16.38889, 23.97959, 16.66667, 16.59722, 20.91837, 19.46746, 15.55556, 16.98225, 18.57988,17.10059, 20.00000, 15.50296, 26.00000, 14.02367, 15.08876, 17.19723, 23.43195, 18.88889, 15.00000,22.48521, 18.47222, 14.16667, 14.02367, 14.86111, 23.31633, 22.80000, 16.56805, 15.91716, 19.51111)
PIMC<-c(7.97, 72.72, 97.08, 83.88, 45.85, 87.33, 96.57, 32.88, 80.77, 92.72, 55.54, 77.77, 70.70, 98.69,  3.25,2.07, 38.08, 98.75, 80.60, 39.97, 96.07, 71.06,  3.44,  2.02, 56.86, 98.99, 90.84, 57.50, 44.77, 84.89)
CC<-c(54, 52, 76, 63, 56, 78, 69, 52, 60, 69, 60, 75, 50, 88, 58, 73, 75, 76, 72, 52, 76, 54, 52, 56, 56, 78, 76, 57, 57, 76)
CatPeso<-c("N",  "N",  "OB", "N",  "N",  "SO", "OB", "N",  "N",  "SO", "N",  "N",  "N",  "OB", "D",  "D",  "N",  "OB","N" , "N",  "OB", "N",  "D",  "D",  "N",  "OB", "SO", "N",  "N",  "N" )
IMCin<-data.frame(PACIENTE,EDAD,SEXO,PESO,TALLA,IMC,PIMC,CC,CatPeso)

#Ejercicio 10: Calcular la distribución porcentual de la variable categoría peso por sexo.

tab <- table(IMCin$CatPeso, IMCin$SEXO)

tabrow <- prop.table(tab,1)
tabcol <- prop.table(tab,2)
