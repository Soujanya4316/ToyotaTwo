const {Given, When, Then} = require('cucumber');
const { Selector } = require('testcafe');

const pricingPageHilux = require('../pages/pricing_hilux_page.js')

Given('I navigate to the HiLux Pricing page', async function () {
    await testController
      .navigateTo(pricingPageHilux.url)
});

Then('the page header should be visible with all the sections', async function () {
    await testController
			.expect(pricingPageHilux.pageHeaderElements.main().visible).ok()
			.expect(pricingPageHilux.pageHeaderElements.title().visible).ok()
			.expect(pricingPageHilux.pageHeaderElements.range().visible).ok()
			.expect(pricingPageHilux.pageHeaderElements.customise().visible).ok()
			.expect(pricingPageHilux.pageHeaderElements.prices().visible).ok()
			.expect(pricingPageHilux.pageHeaderElements.spec().visible).ok()
			.expect(pricingPageHilux.pageHeaderElements.locationBeforeSelection().visible).ok()
			.expect(pricingPageHilux.pageHeaderElements.cta().visible).ok()
});

Then('the page header should not have any location set', async function () {
    await testController
			.expect(pricingPageHilux.pageHeaderElements.locationIcon().visible).ok()
});

Then('all the components on the body should be visible', async function () {
    await testController
			.expect(pricingPageHilux.pageBodyElements.title().visible).ok()
});

Then('all the components on the grade section should be visible', async function () {
    await testController
			.expect(pricingPageHilux.gradeElements.gradeSection().visible).ok()
			.expect(pricingPageHilux.gradeElements.gradeHeading().visible).ok()
			.expect(pricingPageHilux.gradeElements.grade1().visible).ok()
			.expect(pricingPageHilux.gradeElements.grade2().visible).ok()
			.expect(pricingPageHilux.gradeElements.grade3().visible).ok()
			.expect(pricingPageHilux.gradeElements.grade4().visible).ok()
			.expect(pricingPageHilux.gradeElements.grade5().visible).ok()
			.expect(pricingPageHilux.gradeElements.grade6().visible).ok()
});

Then('all the components on the colour section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.colourElements.colourtitle())
			.expect(pricingPageHilux.colourElements.colourtitle().visible).ok()
			.expect(pricingPageHilux.colourElements.colourDesc().visible).ok()
			.expect(pricingPageHilux.colourElements.colourSection().visible).ok()
			.expect(pricingPageHilux.colourElements.colour1().visible).ok()
});

Then('all the components on the trim section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.trimElements.trimTitle())
			.expect(pricingPageHilux.trimElements.trimTitle().visible).ok()
			.expect(pricingPageHilux.trimElements.trimDesc().visible).ok()
			.expect(pricingPageHilux.trimElements.trim1().visible).ok()
});

Then('all the components on the cab-chassis section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.cabChassisElements.cabChassisTitle())
			.expect(pricingPageHilux.cabChassisElements.cabChassisTitle().visible).ok()
			.expect(pricingPageHilux.cabChassisElements.cabChassis1().visible).ok()
			.expect(pricingPageHilux.cabChassisElements.cabChassis2().visible).ok()
			.expect(pricingPageHilux.cabChassisElements.cabChassis3().visible).ok()
			.expect(pricingPageHilux.cabChassisElements.cabChassis4().visible).ok()
			.expect(pricingPageHilux.cabChassisElements.cabChassis5().visible).ok()
});

Then('all the components on the tray section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.trayElements.trayTitle())
			.expect(pricingPageHilux.trayElements.trayTitle().visible).ok()
			.expect(pricingPageHilux.trayElements.tray1().visible).ok()
			.expect(pricingPageHilux.trayElements.trayDesc().visible).ok()
});

Then('all the components on the drivetrain section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.drivetrainElements.driveTrainTitle())
			.expect(pricingPageHilux.drivetrainElements.driveTrainTitle().visible).ok()
			.expect(pricingPageHilux.drivetrainElements.driveTrain1().visible).ok()
			.expect(pricingPageHilux.drivetrainElements.driveTrain2().visible).ok()
			.expect(pricingPageHilux.drivetrainElements.driveTrain3().visible).ok();
});

Then('all the components on the engine type section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.engineTypeElements.engineTypeTitle())
			.expect(pricingPageHilux.engineTypeElements.engineTypeTitle().visible).ok()
			.expect(pricingPageHilux.engineTypeElements.engineType1().visible).ok()
			.expect(pricingPageHilux.engineTypeElements.engineType2().visible).ok()
			.expect(pricingPageHilux.engineTypeElements.engineType3().visible).ok()
});

Then('all the components on the transmission section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.transmissionElements.transmissionTitle())
			.expect(pricingPageHilux.transmissionElements.transmissionTitle().visible).ok()
			.expect(pricingPageHilux.transmissionElements.transmission1().visible).ok()
			.expect(pricingPageHilux.transmissionElements.transmission2().visible).ok()
});

Then('the extras section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.extrasElements.extrasTitle())
			.expect(pricingPageHilux.extrasElements.extrasTitle().visible).ok()
			.expect(pricingPageHilux.extrasElements.extras1().visible).ok()
			.expect(pricingPageHilux.extrasElements.extras2().visible).ok()
});

Then('the accessories section should be visible', async function () {
    await testController
			.hover(pricingPageHilux.accessoriesElements.accessoriesTitle())
			.expect(pricingPageHilux.accessoriesElements.accessoriesTitle().visible).ok()
			.expect(pricingPageHilux.accessoriesElements.accessoriesText().visible).ok()
			.expect(pricingPageHilux.accessoriesElements.accessoriesCTA().visible).ok()
});

Then('the image-pricing section should be visible', async function () {
    await testController
			.expect(pricingPageHilux.lhsElements.lhsSection().visible).ok()
			.expect(pricingPageHilux.lhsElements.lhsTitle().visible).ok()
			.expect(pricingPageHilux.lhsElements.lhsImage().visible).ok()
			.expect(pricingPageHilux.lhsElements.lhsSO().visible).ok()
			.expect(pricingPageHilux.lhsElements.lhsBeforePrice().visible).ok()
});

Then('the pricing on the page body should not be populated', async function () {
    await testController
			.expect(pricingPageHilux.lhsElements.lhsLocationIcon().visible).ok()
			.expect(pricingPageHilux.lhsElements.lhsEnterLocationText().visible).ok()
});

Then('the page footer should be visible with all the sections', async function () {
  	await testController
			.hover(pricingPageHilux.pageFooterElements.pageFooterSection())
			.expect(pricingPageHilux.pageFooterElements.pageFooterSection().visible).ok()
			.expect(pricingPageHilux.pageFooterElements.pageFooterOption1().visible).ok()
			.expect(pricingPageHilux.pageFooterElements.pageFooterOption2().visible).ok()
			.expect(pricingPageHilux.pageFooterElements.pageFooterOption3().visible).ok()
			.expect(pricingPageHilux.pageFooterElements.pageFooterOption4().visible).ok()
			.expect(pricingPageHilux.pageFooterElements.pageFooterOption5().visible).ok()
			.expect(pricingPageHilux.pageFooterElements.pageFooterCTA1().visible).ok()
			.expect(pricingPageHilux.pageFooterElements.pageFooterCTA2().visible).ok()
});

Then('the CTAs on page footer 1 should be \'Book a Test Drive\' and \'Check Local Stock\'', async function () {
    await testController
			.hover(pricingPageHilux.pageFooterElements.pageFooterSection())
			.expect(pricingPageHilux.pageFooterElements.pageFooterCTA1TextDesktop().textContent).contains('BOOK A TEST DRIVE')
			.expect(pricingPageHilux.pageFooterElements.pageFooterCTA2TextDesktop().textContent).contains('CHECK LOCAL STOCK')
/*         .expect(pricingPageHilux.pageFooterElements.pageFooterCTA1().innerText).contains('BOOK A TEST DRIVE')
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA2().innerText).contains('CHECK LOCAL STOCK') */
});

When('I select the location {string} on the page', async function (location) {
	await testController
		.click(pricingPageHilux.lhsElements.lhsEnterLocationText())
		.typeText((pricingPageHilux.locationOverlayElements.locationOverlaySearchField()),location)
		.click(pricingPageHilux.locationOverlayElements.locationOverlayLocationListSelected())
		.click(pricingPageHilux.locationOverlayElements.locationOverlayDealership1())
});

Then('I should see prices getting populated', async function () {
	await testController
		.expect(pricingPageHilux.gradeElements.grade1Label().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade1Price().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade1Label().innerText).contains('DRIVEAWAY FROM')
		.expect(pricingPageHilux.gradeElements.grade1Price().innerText).contains('$')
		.expect(pricingPageHilux.gradeElements.grade1Price().innerText).contains('[')
		.expect(pricingPageHilux.gradeElements.grade1Price().innerText).contains(',')
		.expect(pricingPageHilux.gradeElements.grade2Label().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade2Price().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade2Label().innerText).contains('DRIVEAWAY FROM')
		.expect(pricingPageHilux.gradeElements.grade2Price().innerText).contains('$')
		.expect(pricingPageHilux.gradeElements.grade2Price().innerText).contains('[')
		.expect(pricingPageHilux.gradeElements.grade2Price().innerText).contains(',')
		.expect(pricingPageHilux.gradeElements.grade3Label().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade3Price().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade3Label().innerText).contains('DRIVEAWAY FROM')
		.expect(pricingPageHilux.gradeElements.grade3Price().innerText).contains('$')
		.expect(pricingPageHilux.gradeElements.grade3Price().innerText).contains('[')
		.expect(pricingPageHilux.gradeElements.grade3Price().innerText).contains(',')
		.expect(pricingPageHilux.gradeElements.grade4Label().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade4Price().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade4Label().innerText).contains('DRIVEAWAY FROM')
		.expect(pricingPageHilux.gradeElements.grade4Price().innerText).contains('$')
		.expect(pricingPageHilux.gradeElements.grade4Price().innerText).contains('[')
		.expect(pricingPageHilux.gradeElements.grade4Price().innerText).contains(',')
		.expect(pricingPageHilux.gradeElements.grade5Label().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade5Price().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade5Label().innerText).contains('DRIVEAWAY FROM')
		.expect(pricingPageHilux.gradeElements.grade5Price().innerText).contains('$')
		.expect(pricingPageHilux.gradeElements.grade5Price().innerText).contains('[')
		.expect(pricingPageHilux.gradeElements.grade5Price().innerText).contains(',')
		.expect(pricingPageHilux.gradeElements.grade6Label().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade6Price().visible).ok()
		.expect(pricingPageHilux.gradeElements.grade6Label().innerText).contains('DRIVEAWAY FROM')
		.expect(pricingPageHilux.gradeElements.grade6Price().innerText).contains('$')
		.expect(pricingPageHilux.gradeElements.grade6Price().innerText).contains('[')
		.expect(pricingPageHilux.gradeElements.grade6Price().innerText).contains(',')
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceSection().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceDisclaimer().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceSection().innerText).contains('FULL DRIVEAWAY')
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceSection().innerText).contains('$')
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceSection().innerText).contains(',')
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceDisclaimer().innerText).contains('[')
});

Then('the location on which the price is based should be displayed below the price', async function () {
	await testController
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceLocation().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceLocation().innerText).contains('Prices based on')
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceLocation().innerText).contains('MELBOURNE, VIC 3000')
});

Then('Cash-Finance options should be visible', async function () {
	await testController
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceTabsCash().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceTabsFinance().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceTabsCash().innerText).contains('CASH')
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceTabsFinance().innerText).contains('FINANCE')
});

Then('Cash option should be selected by default', async function () {
	await testController
		.expect(pricingPageHilux.lhsElements.lhsAfterPriceTabsCashSelected().exists).ok()
});

When('I Scroll to the Tray Section', async function () {
	await testController
		.hover(pricingPageHilux.trayElements.tray1())
});

Then('the tray should be selected as {string}', async function (trayName) {
	await testController
		.expect(pricingPageHilux.trayElements.tray1().innerText).contains(trayName)
});

When('I click on Double-Cab Cab-Chassis option', async function () {
	await testController
		.click(pricingPageHilux.cabChassisElements.cabChassis2())
		.wait(1000)
});

When('I click on Double-Cab Pick-Up option', async function () {
	await testController
		.click(pricingPageHilux.cabChassisElements.cabChassis3())
		.wait(1000)
});

Then('the tray section should not be displayed', async function () {
	await testController
		.expect(pricingPageHilux.trayElements.traySection().visible).notOk()
});

When('I click on Single-Cab Cab-Chassis option', async function () {
	await testController
		.click(pricingPageHilux.cabChassisElements.cabChassis1())
		.wait(1000)
});

Then('Book a Test Drive CTA should have correct deep-linking with HiLux selection', async function () {
	await testController
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA1().getAttribute('href')).contains('/book-a-test-drive?CarSelectionOne=HiLux');
});

Then('Check Local Stock CTA should have the dealer URL', async function () {
	await testController
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA2().getAttribute('href')).contains('.dealer.toyota.com.au/new-vehicles/hilux/workmate/');
});

When('I click Check Local Stock CTA', async function () {
	await testController
		.click(pricingPageHilux.pageFooterElements.pageFooterCTA2())
});

Then('Location Overlay window is opened', async function () {
	await testController
		.expect(pricingPageHilux.locationOverlayElements.locationOverlaySection().visible).ok()
		.expect(pricingPageHilux.locationOverlayElements.locationOverlayTitle().visible).ok()
		.expect(pricingPageHilux.locationOverlayElements.locationOverlaySearchField().visible).ok()
});

// Then('the dealer page should be loaded', async function () {
// 	await testController
// 		.expect(pricingPageHilux.getPageDetails.PageURL()).contains('.dealer.toyota.com.au/new-vehicles/hilux/workmate/');
// });

When('I enter the location {string} in the location overlay window', async function (location) {
	await testController
		.typeText((pricingPageHilux.locationOverlayElements.locationOverlaySearchField()),location)
		.click(pricingPageHilux.locationOverlayElements.locationOverlayLocationListSelected())
		.click(pricingPageHilux.locationOverlayElements.locationOverlayDealership1())
});

Then('the Finance Calculator elements should be visible', async function () {
	await testController
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModal().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalTitleBar().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalTitle().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalCloseBtn().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalVehicleHeading().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalSectionTitle().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxIntRate().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalDialArea().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalDial().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalGFV().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooter().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterPrice().visible).ok()
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterDoneBtn().visible).ok()
		.hover(pricingPageHilux.FinanceCalc.FinanceCalcModalDisclaimers())
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalDisclaimers().visible).ok()
});

Then('the Finance Calculator fields should NOT be populated with values', async function () {
	await testController
		.hover(pricingPageHilux.FinanceCalc.FinanceCalcModalVehicleHeading())
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxIntRate().innerText).contains("- - ")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxIntRate().innerText).contains("%")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxIntRate().innerText).contains("INTEREST RATE")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit().innerText).contains(" - -")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit().innerText).contains("$")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit().innerText).contains("DEPOSIT")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm().innerText).contains("- - ")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm().innerText).contains("yr")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm().innerText).contains("LOAN TERM")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance().innerText).contains("- - ")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance().innerText).contains("km")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance().innerText).contains("AVG DISTANCE /YR")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalDialEdit().innerText).contains("- -")

		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalGFV().innerText).contains("Guaranteed Future Value")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalGFV().innerText).contains("$")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalGFV().innerText).contains("- -")

		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterPrice().innerText).contains("$")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterPrice().innerText).contains("--")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterPrice().innerText).contains("/ wk")
});

Then('the Finance Calculator fields should be populated with values', async function () {
	await testController
		.hover(pricingPageHilux.FinanceCalc.FinanceCalcModalVehicleHeading())
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxIntRate().innerText).notContains("- - ")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxIntRate().innerText).contains("%")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxIntRate().innerText).contains("INTEREST RATE")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit().innerText).notContains(" - -")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit().innerText).contains("$")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit().innerText).contains("DEPOSIT")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm().innerText).notContains("- - ")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm().innerText).contains("yr")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm().innerText).contains("LOAN TERM")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance().innerText).notContains("- - ")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance().innerText).contains("km")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance().innerText).contains("AVG DISTANCE /YR")
		
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalDialEdit().innerText).notContains("- -")

		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalGFV().innerText).contains("Guaranteed Future Value")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalGFV().innerText).contains("$")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalGFV().innerText).notContains("- -")

		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterPrice().innerText).contains("$")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterPrice().innerText).notContains("--")
		.expect(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterPrice().innerText).contains("/ wk")
});

When('the calculator dial is turned to {int},{int} position', async function (x,y) {
	await testController
		.drag(pricingPageHilux.FinanceCalc.FinanceCalcModalDial(), x, y)
		.wait(500)
});

When('I click {string}', async function (click_option) {
	if(click_option === "Finance Tab"){
		await testController
			.click(pricingPageHilux.lhsElements.lhsAfterPriceTabsFinance())
			.wait(500)
	}else if(click_option === "Finance CTA"){
		await testController
			.click(pricingPageHilux.lhsElements.lhsAfterPriceTabsFinanceCTA())
			.wait(500)
	}else if(click_option === "Deposit Box"){
		await testController
			.click(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxDeposit())
			.wait(500)
	}else if(click_option === "Loan Term Box"){
		await testController
			.click(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxLoanTerm())
			.wait(500)
	}else if(click_option === "Avg Distance Box"){
		await testController
			.click(pricingPageHilux.FinanceCalc.FinanceCalcModalBoxAvgDistance())
			.wait(500)
	}else if(click_option === "Done CTA"){
		await testController
			.click(pricingPageHilux.FinanceCalc.FinanceCalcModalFooterDoneBtn())
			.wait(500)
	}	
});

Then('the Finance TAB fields should be visible', async function () {
	await testController
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionPerWeek().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionIntRate().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionLoanTerm().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionGFV().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionCTA1().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionCTA2().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionLocation().visible).ok()
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionGFVTooltipIcon().visible).ok()
		.click(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionGFVTooltipIcon())
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionGFVTooltipContent().visible).ok()
});

Then('the Finance TAB fields should be populated with values', async function () {
	await testController
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionPerWeek().innerText).contains("$")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionPerWeek().innerText).notContains("--")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionPerWeek().innerText).notContains("- -")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionPerWeek().innerText).contains("/wk")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionPerWeek().innerText).contains("WITH TOYOTA ACCESS")

		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionIntRate().innerText).notContains("--")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionIntRate().innerText).notContains("- -")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionIntRate().innerText).contains("%")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionIntRate().innerText).contains("INTEREST RATE")
		
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionLoanTerm().innerText).notContains("--")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionLoanTerm().innerText).notContains("- -")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionLoanTerm().innerText).contains("yr")
		.expect(pricingPageHilux.lhsElements.lhsAfterFinTabsSectionLoanTerm().innerText).contains("LOAN TERM")	
});

Then('CTA1 should be {string}', async function (ctaName) {
	await testController
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA1().visible).ok()
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA2().visible).ok()
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA1().innerText).contains(ctaName)
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA2().innerText).contains('CHECK LOCAL STOCK')
});

Then('CTA1 should have the {string} URL', async function (ctaName) {
	if(ctaName === "BUY ONLINE"){
		await testController
			.expect(pricingPageHilux.pageFooterElements.pageFooterCTA1().getAttribute('href')).contains('.dealer.toyota.com.au/purchase/newcars');
	}else if(ctaName === "BOOK A TEST DRIVE"){
		await testController
		.expect(pricingPageHilux.pageFooterElements.pageFooterCTA1().getAttribute('href')).contains('/book-a-test-drive?CarSelectionOne=HiLux');
	}
});