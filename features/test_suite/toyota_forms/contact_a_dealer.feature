@toyota @forms
Feature: Forms - Contact a Dealer
	As a customer
	I want to contact a dealer
	So that I can make an enquiry

Scenario: Toyota_WFM_ContactDealer_FieldsAvailable_AC1
	Given I am on the main url with these extra parameters "/contact-a-dealer"
    Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[1]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[2]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[3]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[4]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[5]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[6]" should be visible
	And The element with "CssSelector" matching "#carSelectionOne" should be visible
	And The element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(1)" should be visible
	And The element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(2)" should be visible
	And The element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(3)" should be visible
    And The element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(4)" should be visible
	And The element with "CssSelector" matching "#message" should be visible
	When I click on the element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[1]"
	Then The element with "CssSelector" matching "#firstname" should be visible
	And The element with "CssSelector" matching "#lastname" should be visible
	And The element with "CssSelector" matching "#email" should be visible
	And The element with "CssSelector" matching "#phone" should be visible
    And The element with "XPath" matching "//input[@type='submit']" should be visible

Scenario: Toyota_WFM_ContactDealer_EnquiryType_AC2
	Given I am on the main url with these extra parameters "/contact-a-dealer"
    Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[1]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[2]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[3]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[4]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[5]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[6]" should be visible

Scenario: Toyota_WFM_ContactDealer_PrefillQueryString_AC3.1
	Given I am on the main url with these extra parameters "/contact-a-dealer?EnquiryType=price"
    Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "CssSelector" matching "#enquire-type-Price + label" should be visible
    When I Scroll to the element with "CssSelector" matching "#enquire-type-Price + label"
	And The element with "CssSelector" matching "#enquire-type-Price.ng-valid-parse" should exist on the page

Scenario: Toyota_WFM_ContactDealer_PrefillQueryString_AC3.2
	Given I am on the main url with these extra parameters "/contact-a-dealer?CarSelectionOne=Corolla"
 	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
    When I Scroll to the element with "CssSelector" matching "#carSelectionOne"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"

Scenario: Toyota_WFM_ContactDealer_PrefillQueryString_AC3.3
	Given I am on the main url with these extra parameters "/contact-a-dealer?EnquiryType=price&CarSelectionOne=Corolla"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "form[name='wfm'] tags-input#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "CssSelector" matching "#enquire-type-Price + label" should be visible
    When I Scroll to the element with "CssSelector" matching "#enquire-type-Price + label"
    And The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"
	And The element with "CssSelector" matching "#enquire-type-Price.ng-valid-parse" should exist on the page
	
Scenario: Toyota_WFM_ContactDealer_PrefillQueryChange_AC4.1
	Given I am on the main url with these extra parameters "/contact-a-dealer?EnquiryType=price"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "CssSelector" matching "#enquire-type-Price + label" should be visible
    When I Scroll to the element with "CssSelector" matching "#enquire-type-Price + label"
	And The element with "CssSelector" matching "#enquire-type-Price.ng-valid-parse" should exist on the page
	When I click on the element with "CssSelector" matching "#enquire-type-Insurance + label"
	And The element with "CssSelector" matching "#enquire-type-Insurance.ng-valid-parse" should exist on the page

Scenario: Toyota_WFM_ContactDealer_PrefillQueryChange_AC4.2
	Given I am on the main url with these extra parameters "/contact-a-dealer?CarSelectionOne=Corolla"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
    When I Scroll to the element with "CssSelector" matching "#carSelectionOne"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Yaris"

Scenario: Toyota_WFM_ContactDealer_QueryStringGeneric_AC5.1
	Given I am on the main url with these extra parameters "/contact-a-dealer?EnquiryType=Fake1"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "CssSelector" matching ".wfm__buttons .ng-valid-parse" should NOT exist on the page

Scenario: Toyota_WFM_ContactDealer_QueryStringGeneric_AC5.2
	Given I am on the main url with these extra parameters "/contact-a-dealer?CarSelectionOne=Fake2"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching " "

Scenario: Toyota_WFM_ContactDealer_QueryStringPartialInvalidCar_AC6.1
	Given I am on the main url with these extra parameters "/contact-a-dealer?EnquiryType=price&CarSelectionOne=Fake"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "CssSelector" matching "#enquire-type-Price + label" should be visible
    When I Scroll to the element with "CssSelector" matching "#enquire-type-Price + label"
	And The element with "CssSelector" matching "#enquire-type-Price.ng-valid-parse" should exist on the page
	And The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching " "

Scenario: Toyota_WFM_ContactDealer_QueryStringPartialInvalidEnquiryType_AC6.2
	Given I am on the main url with these extra parameters "/contact-a-dealer?EnquiryType=fake&CarSelectionOne=Corolla"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	Then The element with "CssSelector" matching ".wfm__buttons .ng-valid-parse" should NOT exist on the page
	And The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"

@smoketest @skip_prod
Scenario: Toyota_WFM_ContactDealer_ValidSubmission_AC7.1
	Given I am on the main url with these extra parameters "/contact-a-dealer"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "CssSelector" matching "#enquire-type-Price + label"
	And I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Corolla"
	And I click on the element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(1)"
	And I focus the element with "CssSelector" matching "#message" and enter this text "This is test message"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
    When I click on the element with "CssSelector" matching "#firstname"
    Then The element with "CssSelector" matching "#email" should be visible
    And The element with "CssSelector" matching "#phone" should be visible
	When I click on the element with "XPath" matching "//input[@value='Submit']"
    Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

@smoketest @skip_prod
Scenario: Toyota_WFM_ContactDealer_ValidSubmission_AC7.2_Mandatory fields
	Given I am on the main url with these extra parameters "/contact-a-dealer"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "CssSelector" matching "#enquire-type-Price + label"
	And I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Corolla"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
    When I click on the element with "CssSelector" matching "#firstname"
    Then The element with "CssSelector" matching "#email" should be visible
    And The element with "CssSelector" matching "#phone" should be visible
	When I click on the element with "XPath" matching "//input[@value='Submit']"
	Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

Scenario: Toyota_WFM_ContactDealer_InvalidSubmission_AC8
	Given I am on the main url with these extra parameters "/contact-a-dealer"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	And I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	And I click on the element with "CssSelector" matching "#enquire-type-Price + label"
	And I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Corolla"
	And I click on the element with "XPath" matching "//input[@value='Submit']"
    Then The element with "CssSelector" matching ".validation-failed:nth-of-type(1) .message" should be visible
    And The element with "CssSelector" matching ".validation-failed:nth-of-type(2) .message" should be visible
    And The element with "CssSelector" matching ".validation-failed:nth-of-type(3) .message" should be visible
    And The element with "CssSelector" matching ".validation-failed:nth-of-type(4) .message" should be visible

@skip_prod
Scenario: Toyota_WFM_ContactDealer_CamryWebGL
	Given I am on the main url with these extra parameters "/contact-a-dealer?CarSelectionOne=Camry&material_code=test"
	Then The element with "CssSelector" matching "#findADealer input" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3000"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I click on the element with "XPath" matching "//*[@class='ty-wfm-options -density-compact -icon-align-center']//label[1]"
	#And I click on the element with "CssSelector" matching ".suggestion-list li.suggestion-item:nth-of-type(1)"
	#And I click on the element with "CssSelector" matching "form[name='wfm'] .wfm__rectangles .ng-scope:nth-child(1)"
	And I click on the element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[1]"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Camry"
	#And The element with "CssSelector" matching "#message" should contain "https://customise.toyota.com.au/camry/spec" text
	When I click on the element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(1)"
	And I focus the element with "CssSelector" matching "#message" and enter this text "This is test message"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	When I click on the element with "XPath" matching "//input[@type='submit']"
	Then I wait for element with "CssSelector" matching ".ty-wfm-form-response--success" to be visible