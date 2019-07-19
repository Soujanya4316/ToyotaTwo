const {Given, When, Then} = require('cucumber');
const { Selector } = require('testcafe');
const ClientFunction = require('testcafe').ClientFunction;
const globalElements = require('../pages/global_page.js')

Then('the global header should be visible with all the sections', async function () {
    await testController
        .expect(globalElements.globalHeaderElements.main().visible).ok()
        .expect(globalElements.globalHeaderElements.logo().visible).ok()
        .expect(globalElements.globalHeaderElements.vehicles().visible).ok()
        .expect(globalElements.globalHeaderElements.currentOffers().visible).ok()
        .expect(globalElements.globalHeaderElements.usedCars().visible).ok()
        .expect(globalElements.globalHeaderElements.findADealer().visible).ok()
        .expect(globalElements.globalHeaderElements.owners().visible).ok()
});

Then('the page footer 2 should be visible', async function () {
    await testController
		.hover(globalElements.pageFooter2Elements.pageFooter2Section())
		.expect(globalElements.pageFooter2Elements.pageFooter2CTA1Img().visible).ok()
		.expect(globalElements.pageFooter2Elements.pageFooter2CTA1Desc().visible).ok()
		.expect(globalElements.pageFooter2Elements.pageFooter2CTA2Img().visible).ok()
		.expect(globalElements.pageFooter2Elements.pageFooter2CTA2Desc().visible).ok()
        .expect(globalElements.pageFooter2Elements.pageFooter2CTA1Desc().textContent).contains('DOWNLOAD BROCHURE')
        .expect(globalElements.pageFooter2Elements.pageFooter2CTA2Desc().textContent).contains('BOOK A TEST DRIVE')
});

Then('the page disclaimers should be visible and functional', async function () {
    await testController
		.hover(globalElements.pageFooterDisclaimers.pageFooterDisclaimersSection())
		.expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersOpen().visible).ok()
        .expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersOpen().innerText).contains('DISCLAIMERS')
        .expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersCloseBtn().visible).ok()
        .expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersCloseBtn().textContent).contains('Close')
        .expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersItem1Title().visible).ok()
        .expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersItem1Desc().visible).ok()
        .click(globalElements.pageFooterDisclaimers.pageFooterDisclaimersOpen())
        .wait(1000)
        .expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersItem1Title().visible).notOk()
        .expect(globalElements.pageFooterDisclaimers.pageFooterDisclaimersItem1Desc().visible).notOk()
});

Then('the global footer should be visible', async function () {
    await testController
		.hover(globalElements.globalFooter.globalFooterSectionMain())
		.expect(globalElements.globalFooter.globalFooterSectionMain().visible).ok()
		.expect(globalElements.globalFooter.globalFooterSectionVehicles().visible).ok()
		.expect(globalElements.globalFooter.globalFooterSectionTools().visible).ok()
		.expect(globalElements.globalFooter.globalFooterSectionOwnership().visible).ok()
		.expect(globalElements.globalFooter.globalFooterSectionContact().visible).ok()
		.expect(globalElements.globalFooter.globalFooterSectionFinePrint().visible).ok()
});