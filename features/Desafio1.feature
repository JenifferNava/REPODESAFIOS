Feature: Login de usuarios utilizando credenciales correctas

Scenario: Login con credenciales válidas
 Given el usuario se encuentra en la página de inicio de sesión
 When el usuario captura "USER23" en el campo de nombre de usuario
 And el usuario captura "PASSWORD123" en el campo de contraseña
 Then hace clic en el botón de Login
 And el usuario puede acceder al panel principal


Scenario: Login con credenciales invalidas
 Given el usuario se encuentra en la página de inicio de sesión
 And el usuario captura "USER23" en el campo de nombre de usuario
 When captura una contraseña incorrecta "PASSWORD12345" en el campo de contraseña
 Then Muestre mensaje error "Credenciales no válidas"