Feature: Compra de despensa de la semana

Scenario: El usuario realiza la búsqueda de productos de despensa
 Given ha iniciado sesión en la pagina de sams club
 When el usuario captura en el buscador el producto deseado
 Then se muestra el resultado de la búsqueda
 And usuario selecciona el producto deseado
 
Scenario Outline: El usuario realiza la búsqueda de los productos
 Given ha iniciado sesión en la pagina de sams club
 When el usuario captura en el buscador la palabra <"Pan Integral">
 Then el navegador muestra el resultado de la búsqueda <"Pan Integral">
 And los resultados que le pueden interesar al usuario <"Pan Integral">

Examples: Resultados de busqueda para pan integral 

| productos de Pan integral | productos similares               |
| Bimbo                     | Pan bimbo multigrano              |
| Members Mark              | Pan de caja integral Members Mark |
| Oroweat                   | Pan integral Oroweat              |