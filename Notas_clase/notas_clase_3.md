# clase3_AID_notas

## Test de independencia
* Explicación amable sobre grados de libertad https://blog.minitab.com/es/que-son-los-grados-de-libertad-en-estadistica
* Estudio transversal: se toman los datos en 1 momento determinado (vs longitudinal, en distintos momentos)

### Maneras de probar independencia de variables (*ideas previas*)
Repaso de independecia entre eventos y probabilidad condicional
* **Manera 1**: Multiplicar la probabilidad marginal de x por la de y
![](https://i.imgur.com/BJd38Y3.jpg)


* **Manera 2**: Ver si la P(A/B) es igual a la P(A)
![](https://i.imgur.com/53BJZvp.png)

### Test chi2
Test contra mayor de cola superior
![](https://i.imgur.com/xPTPbyR.png)

2 = 2 grados de libertad, por lo que vamos a buscar el chi2 para 2 grados de libertad (filas-1 x columnas-1)
Para establecer la zona de rechazo puedo usar excel, geogebra
![](https://i.imgur.com/1MSKpW8.png)

En Geogebra:
1. probabilidad
2. chi2
3. elijo grados de libertad 
4. le pido la probabilidad acumulada a la derecha
Me da el valor del estadístico
![](https://i.imgur.com/pe6xaF2.png)

### Condiciones para aplicar prueba chi2:
* todas las casillas valor mayor o igual a 1
* frecuencias esperadas mayores a 5

https://www.ucm.es/data/cont/media/www/pag-54183/APUNTES%20ESTAD%C3%8DSTICA%203.pdf
"Una condición básica para que podamos llevar a cabo una prueba chi-cuadrado es que las frecuencias de las distintas clases deben ser suficientemente altas como para garantizar que pequeñas desviaciones aleatorias en la muestra no tengan importancia decisiva sobre el valor del estadístico de contraste"

### Test exacto de Fisher
(...)

## Comparación de medias univariado

### Diferencia de medias para dos muestras independientes
#### Repaso de propiedades de estimadores
![](https://i.imgur.com/nqqHPzR.png)
![](https://i.imgur.com/ftqatlI.png)
