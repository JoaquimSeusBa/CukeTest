
const { Given, When, Then } = require('cucumber');

//// Your step definitions /////

const assert = require('assert');
const {driver} = require('../support/web_driver');

const time = 4000;

//Entrar no site
Given("Browse to web site {string}", async function (url) {

    await driver.get(url);

});

//Click no botão desejado
When("I press the {string} button", async function (arg1) {

    await driver.sleep(time);
    await driver.findElemente({id:arg1}).click();
    
});

//Preencher espaço
Given("the {string} field is filled with {string}", async function (arg1, arg2) {

    await driver.sleep(time);
    await driver.findElemente({id:arg1}).sendKeys(arg2);

});