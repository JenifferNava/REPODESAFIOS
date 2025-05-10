const { I } = inject();
//"([^"]*)"
///b[text()="Acerca de esta página"] 
Given (/^Estoy en google$/,() => {
    I.amOnPage("/");
});

//
When( 
  /Espero que cargue la pagiona completa y escribo carrros grandes en la busquedor$/,
  (Busqueda) => {
    I.waitForVisible('//img[@alt="Google"]',20);
    I.waitForElement('//textarea[@aria-label="Buscar"]');
    I.fillField('//testarea[@aria-label="Buscar"]', "carros grandes");
   } 
);

When(/Borro la busqueda$/, () => {
    I.wait(5);
    I.click('//div[@aria-label="Borrar]');
});

Then(/^Valido que aparezcan las tendencias$/, () => {
    I.wait(2);
    I.waitForVisible('//div[text()="Tendencias de búsquedas]',10);
    console.log("todos los elementos cargaron correctamente");
});
