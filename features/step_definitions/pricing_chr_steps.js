const { Given, When, Then } = require('cucumber');

const pricingPageCHR = require('../pages/pricing_chr_page.js');

const ClientFunction = require('testcafe').ClientFunction;
const {Selector} = require('testcafe');


Given('I navigate to the CHR Pricing page', async function () {
	await testController
		.navigateTo(pricingPageCHR.url)
});

When('I select the Koba grade', async function () {
	await testController
		.click(pricingPageCHR.gradeElements.grade2())
		.wait(1000)
});

When('I select Koba with yellow colour and black roof', async function () {
	await testController
		.click(pricingPageCHR.roofColourElements.roofColour2())
		.wait(1000)
});

Then('I should be able to see the vehicle image {string}', async function (vehicleVariant) {
	if(vehicleVariant === "kobaYellow"){
		await testController
			.expect(pricingPageCHR.lhsElements.lhsImage().getAttribute('srcset')).contains(pricingPageCHR.kobaYellow);
			
	}else if(vehicleVariant === "kobaYellowWithBlackRoof"){
		await testController
			.expect(pricingPageCHR.lhsElements.lhsImage().getAttribute ('srcset')).contains(pricingPageCHR.kobaYellowWithBlackRoof);
	}else{
		await testController
			.expect(vehicleVariant).eql(false, 'Vehicle Information missing in the step file');
	}
});

