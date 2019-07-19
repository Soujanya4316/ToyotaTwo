@toyota @forms
Feature: Forms - Book a Test Drive
	As a Customer
	I want to be able to book a test drive online
	So that I can test out my desired cars

Background:
	Given I am on the main url with these extra parameters "/book-a-test-drive"

Scenario: Toyota_WFM_BookTestDrive_FieldsAvailable_AC1
 	Then The element with "CssSelector" matching "#carSelectionOne" should be visible
 	And The element with "CssSelector" matching "#carSelection0_ad" should be visible
 	And The element with "CssSelector" matching "#carSelection1_ad" should be visible
 	And The element with "CssSelector" matching "#firstname" should be visible
 	And The element with "CssSelector" matching "#lastname" should be visible
 	And The element with "CssSelector" matching "#email" should be visible
 	And The element with "CssSelector" matching "#phone" should be visible
 	And The element with "CssSelector" matching "#findADealer" should be visible
	And The element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]" should be visible
	And The element with "XPath" matching "//*[@class='ty-wfm-options']//label[2]" should be visible
	And The element with "XPath" matching "//*[@class='ty-wfm-options']//label[3]" should be visible
	And The element with "XPath" matching "//input[@type='submit']" should be visible
	And The element with "CssSelector" matching ".ty-wfm-agreement-intro" should be visible

@smoketest @skip_prod
Scenario: Toyota_WFM_BookTestDrive_ValidSubmission_AC2
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Corolla"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Kluger"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then The element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" should be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

Scenario: Toyota_WFM_BookTestDrive_InvalidSubmissionNoMandatory_AC3.1
 	When I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Corolla"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Kluger"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then The element with "XPath" matching "//div[@class='validation-failed']//span[@class='message']" should be visible
	And The element with "CssSelector" matching "#fnmsg" should be visible
	And The element with "CssSelector" matching "#lnmsg" should be visible
	And The element with "CssSelector" matching "#emailmsg" should be visible
	And The element with "CssSelector" matching "#phonemsg" should be visible
	And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(1) .ty-wfm-field.validation-failed:nth-child(2) > span.message" should be visible

Scenario: Toyota_WFM_BookTestDrive_InvalidSubmissionNoFields_AC3.2
	When I click on the element with "XPath" matching "//input[@type='submit']"
	Then The element with "XPath" matching "//div[@class='validation-failed']//span[@class='message']" should be visible
	And The element with "CssSelector" matching "#fnmsg" should be visible
	And The element with "CssSelector" matching "#lnmsg" should be visible
	And The element with "CssSelector" matching "#emailmsg" should be visible
	And The element with "CssSelector" matching "#phonemsg" should be visible
	And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(1) .ty-wfm-field.validation-failed:nth-child(2) > span.message" should be visible

Scenario: Toyota_WFM_BookTestDrive_MainCarSelection_AC5
	Given I am on the main url with these extra parameters "/book-a-test-drive?CarSelectionOne=Camry"
 	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Camry"

Scenario: Toyota_WFM_BookTestDrive_MainCarSelectionChange_AC6
	Given I am on the main url with these extra parameters "/book-a-test-drive?CarSelectionOne=Camry"
 	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Camry"
 	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
 	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Yaris"

Scenario: Toyota_WFM_BookTestDrive_MainCarSelectionGeneric_AC7
	Given I am on the main url with these extra parameters "/book-a-test-drive?CarSelectionOne=Fake"
 	#Then The dropdown with "CssSelector" matching ".ty-wfm-dropdown__label" should have "Text" matching "Select a vehicle *"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching " "

@skip_prod
Scenario: Toyota_WFM_BookTestDrive_MainCarSelectionValidation_AC9.1
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then The element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" should be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

@skip_prod
Scenario: Toyota_WFM_BookTestDrive_MainCarSelectionValidation_AC9.2
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Corolla"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then The element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" should be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

@skip_prod
Scenario: Toyota_WFM_BookTestDrive_MainCarSelectionValidation_AC9.3
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Kluger"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then I wait for element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" to be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then I wait for element with "CssSelector" matching ".ty-wfm-form-response--success" to be visible

@skip_prod
Scenario: Toyota_WFM_BookTestDrive_MainCarSelectionValidation_AC9.4
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Corolla"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Kluger"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then I wait for element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" to be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then I wait for element with "CssSelector" matching ".ty-wfm-form-response--success" to be visible

@skip_prod
Scenario: Toyota_WFM_BookTestDrive_MainCarMissing_AC10.1
	When I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Corolla"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then I wait for element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" to be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then I wait for element with "CssSelector" matching ".ty-wfm-form-response--success" to be visible

@skip_prod
Scenario: Toyota_WFM_BookTestDrive_MainCarMissing_AC10.2
	When I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Kluger"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then I wait for element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" to be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then I wait for element with "CssSelector" matching ".ty-wfm-form-response--success" to be visible

@skip_prod
Scenario: Toyota_WFM_BookTestDrive_MainCarMissing_AC10.3
	When I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Corolla"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Kluger"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "Melbourne"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then I wait for element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]" to be visible
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options']//label[1]"
	And I click on the element with "XPath" matching "//input[@type='submit']"
	Then I wait for element with "CssSelector" matching ".ty-wfm-form-response--success" to be visible