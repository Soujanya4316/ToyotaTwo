const {Given, When, Then} = require('cucumber');
const { Selector } = require('testcafe');
const ClientFunction = require('testcafe').ClientFunction;
const Utils = require('../../support/utils.js');
const Config = require('../../support/config.js');


Given('I am on the main url with these extra parameters {string}', async function (path) {
    var FullURL = process.env.TESTCAFE_URL + path;
    console.log(`FullURL: ${FullURL}`);
    await testController.navigateTo(FullURL);
});

Given('I go to this absolute url {string}', async function (url) {
    await testController.navigateTo(url);
});

Then('The element with {string} matching {string} should be visible', function (selectorType, selectorValue) {    
    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var elementSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.expect(elementSelector.visible).ok();
});

Then('The element with {string} matching {string} should NOT be visible', function (selectorType, selectorValue) {    
    //console.log(`..... Step: The element with ${selectorType} matching ${selectorValue} should be visible`);

    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var elementSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.expect(elementSelector.visible).notOk();
});

Then('The element with {string} matching {string} should exist on the page', function (selectorType, selectorValue) {    
    //console.log(`..... Step: The element with ${selectorType} matching ${selectorValue} should exist on the page`);

    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var elementSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.expect(elementSelector.exists).ok();
});

Then('The element with {string} matching {string} should NOT exist on the page', function (selectorType, selectorValue) {    
    //console.log(`..... Step: The element with ${selectorType} matching ${selectorValue} should NOT exist on the page`);

    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var elementSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.expect(elementSelector.exists).notOk();
});

When('I focus the element with {string} matching {string} and enter this text {string}', function (selectorType, selectorValue, textToType) {    
    //console.log(`..... Step: I focus the element with "${selectorType}" matching "${selectorValue}" and enter this text "${textToType}"`);

    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var textBoxElementSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.typeText(textBoxElementSelector,textToType);
});

/*     Then('I take a screenshot called "{fileName}"', function (fileName) {
    console.log(`..... Step: I take a screenshot called "${fileName}"`);
    return testController
        //.screenshots('test/reports/screenshots/', true, '${DATE}_${TIME}/test-${TEST_INDEX}/${USERAGENT}/tests/${FILE_INDEX}_${fileName}.png');
        .takeScreenshot('test/reports/screenshots/', true, '/${USERAGENT}/tests/${fileName}.png');
}); */

When('I click on the element with {string} matching {string}', function (selectorType, selectorValue) {
    //console.log(`..... Step: I click on the element with "${selectorType}" matching "${selectorValue}"`);
    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var clickSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.click(clickSelector);
});

When('I Scroll to the element with {string} matching {string}', function (selectorType, selectorValue) {
    //console.log(`..... Step: I Scroll to the element with "${selectorType}" matching "${selectorValue}`);
    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var hoverSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.hover(hoverSelector);
});

Then('The url should contain {string}', function (url) {
    //console.log(`..... Step: The url should contain "${url}"`);
    const getPageUrl = ClientFunction(() => window.location.href).with({ boundTestRun: testController });
    return testController.expect(getPageUrl()).contains(url);
});

When('I focus the dropdown with {string} matching {string} and choose the option with "Text" matching {string}', async function(selectorType, selectorValue, textToSelect) {
    //console.log(`..... Step: I focus the dropdown with "${selectorType}" matching "${selectorValue}" and choose the option with "Text" matching "${textToSelect}"`);
    
    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    const clickSelector = Selector(cssValue).with({ boundTestRun: testController });
    const clickOption = clickSelector.find('span').with({ boundTestRun: testController });

    await testController.click(clickSelector);
    return testController.click(clickOption.withText(textToSelect));
});

Then('The element with {string} matching {string} should contain {string} text', function (selectorType, selectorValue, withText) {    
    //console.log(`..... Step: The element with ${selectorType} matching ${selectorValue} should be visible`);

    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);
    var elementSelector = Selector(cssValue).with({ boundTestRun: testController });
    return testController.expect(elementSelector.textContent).contains(withText);
});

Then('The dropdown with {string} matching {string} should have "Text" matching {string}', function (selectorType, selectorValue, withText) {
    var cssValue = Utils.XPathCSSFilter(selectorType, selectorValue);

    const clickSelector = Selector(cssValue).with({ boundTestRun: testController });
    const clickOption = clickSelector.find('span').with({ boundTestRun: testController });

    //testController.click(clickSelector);
    return testController.expect(clickOption.textContent).contains(withText);
});

When('I wait for {string} seconds', async function (timeSec) {
    var time = parseInt(timeSec)*1000;
    await testController.wait(time);
});
