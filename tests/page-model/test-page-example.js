'use strict';

let testPage = {

    linkAbout: 'a[href*="about.google"]',
    header: '.header'

};

testPage.linkOurProducts = `${testPage.header} a[title*="roducts"]`;
testPage.inputSearch = 'input[type="text"]';
testPage.buttonSearch = 'input[type="submit"]';

module.exports = testPage;