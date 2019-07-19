const { Given, When, Then } = require('cucumber');
const { Selector } = require('testcafe');

const pricingPageRav4 = require('../pages/pricing_rav4_page.js')
const pricingPageHilux = require('../pages/pricing_hilux_page.js')


Given('I navigate to the Rav4 Pricing page', async function () {
	await testController
		.navigateTo(pricingPageRav4.url)
});

When('I select the Cruiser grade', async function () {
	await testController
		.click(pricingPageRav4.gradeElements.grade3())
});

Then('I should see 3 trims', async function () {
	await testController
		.expect(pricingPageRav4.trimElements.trim1().visible).ok()
		.expect(pricingPageRav4.trimElements.trim2().visible).ok()
		.expect(pricingPageRav4.trimElements.trim3().visible).ok()
});

When('I select the Graphite Colour', async function () {
	await testController
		.click(pricingPageRav4.colourElements.colourGraphite())
});

Then('I should see 2 trims', async function () {
	await testController
		.expect(pricingPageRav4.trimElements.trim2().visible).ok()
		.expect(pricingPageRav4.trimElements.trim3().visible).ok()
});

Then('I should not see the beige leather trim', async function () {
	await testController
		.expect(pricingPageRav4.trimElements.trim1().exists).notOk()
});

Then('the accessory {string} should be enabled', async function (accessory) {
	await testController
		.hover(pricingPageRav4.extrasElements.extras1RadioUI())
		.expect(pricingPageRav4.extrasElements.extras1Label().innerText).contains(accessory)
		.expect(pricingPageRav4.extrasElements.extras1RadioBtn().hasAttribute('disabled')).notOk()
});

Then('the accessory {string} can be selected', async function (accessory) {
	await testController
		.hover(pricingPageRav4.extrasElements.extras1RadioUI())
		.click(pricingPageRav4.extrasElements.extras1RadioUI())
});

Then('the accessory {string} should be disabled', async function (accessory) {
	await testController
		.hover(pricingPageRav4.extrasElements.extras2Label())
		.expect(pricingPageRav4.extrasElements.extras2Label().innerText).contains(accessory)
		.expect(pricingPageRav4.extrasElements.extras2RadioBtn().hasAttribute('disabled')).ok()
});