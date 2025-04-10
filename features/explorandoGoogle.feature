Feature: Exploracion completa de google

Scenario: Validación de tendencias en google
 Given Estoy en google
  When Esperando que cargue la paguina completa y escribo carros grandes en el buscador
  And Borro la busqueda
  Then Valido que aparezcan las tendencias