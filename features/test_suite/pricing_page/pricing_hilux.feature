@toyota @pricing
Feature: Pricing Page - HiLux
	As a Customer
	I want to be able to see the HiLux Pricing Page
	So that I know the pricing details of the vehicle

Background:
	Given I navigate to the HiLux Pricing page

@smoketest 
Scenario: Pricing HiLux - All items on the page should be visible
    Then the global header should be visible with all the sections
	And the page header should be visible with all the sections
	And the page header should not have any location set
	And all the components on the body should be visible
	And all the components on the grade section should be visible
	And all the components on the colour section should be visible
	And all the components on the trim section should be visible
	And all the components on the cab-chassis section should be visible
	And all the components on the tray section should be visible
	And all the components on the drivetrain section should be visible
	And all the components on the engine type section should be visible
	And all the components on the transmission section should be visible
	And the extras section should be visible
	And the accessories section should be visible
	And the image-pricing section should be visible
	And the pricing on the page body should not be populated
	And the page footer should be visible with all the sections
	And the CTAs on page footer 1 should be 'Book a Test Drive' and 'Check Local Stock'
	And the page footer 2 should be visible
	And the page disclaimers should be visible and functional
	And the global footer should be visible

Scenario: Pricing HiLux - Selecting the location should populate the prices and update the page
	When I select the location "3000" on the page
	Then I should see prices getting populated
	And the location on which the price is based should be displayed below the price 
	And Cash-Finance options should be visible
	And Cash option should be selected by default

Scenario: Pricing HiLux - Tray should be visible for sthe respective variants in Workmate
	When I Scroll to the Tray Section
	Then the tray should be selected as "General Purpose Alloy*"
	When I click on Double-Cab Cab-Chassis option
	Then the tray should be selected as "General Purpose Steel*"
	When I click on Double-Cab Pick-Up option
	Then the tray section should not be displayed
	When I click on Single-Cab Cab-Chassis option
	Then the tray should be selected as "General Purpose Alloy*"

Scenario: Pricing HiLux - Check CTA links
	Then Book a Test Drive CTA should have correct deep-linking with HiLux selection
	When I select the location "3000" on the page
	And Check Local Stock CTA should have the dealer URL

Scenario: Pricing HiLux - Check Stock CTA should open the location overlay when NO dealer is selected
	When I click Check Local Stock CTA
	Then Location Overlay window is opened
	When I enter the location "3000" in the location overlay window
	#Then the dealer page should be loaded

Scenario: Pricing HiLux - Buy Now CTA should NOT be displayed for 2000
    When I select the location "2000" on the page
    Then CTA1 should be "BOOK A TEST DRIVE"
    And CTA1 should have the "BOOK A TEST DRIVE" URL

Scenario: Pricing HiLux - Check Finance Tab
	When I select the location "3000" on the page
	And I click "Finance Tab"
	And I click "Finance CTA"
	Then the Finance Calculator elements should be visible
	And the Finance Calculator fields should NOT be populated with values
	When the calculator dial is turned to 100,150 position
	And I click "Deposit Box"
	And the calculator dial is turned to 100,200 position
	And I click "Loan Term Box"
	And the calculator dial is turned to 200,0 position
	And I click "Avg Distance Box"
	And the calculator dial is turned to -180,0 position
	Then the Finance Calculator fields should be populated with values
	And I click "Done CTA"
	And the Finance TAB fields should be visible
	And the Finance TAB fields should be populated with values

	
	





	
	
	