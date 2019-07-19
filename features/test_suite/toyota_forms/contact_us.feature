@toyota @forms
Feature: Forms - Contact Us
	As a Customer
	I want to contact Toyota
	So that I can get my enquiry answered


Scenario: Toyota_WFM_ContactUs_FieldsAvailable_AC1
	Given I am on the main url with these extra parameters "/contact-us"
	Then The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[1]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[2]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[3]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[4]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[5]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[6]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[7]" should be visible
	#And The element with "CssSelector" matching ".wfm__buttons.list-container div:nth-of-type(8)>label" should be visible
	And The element with "CssSelector" matching "#message" should be visible
	And The element with "CssSelector" matching "#firstname" should be visible
	And The element with "CssSelector" matching "#lastname" should be visible
	And The element with "CssSelector" matching "#email" should be visible
	And The element with "CssSelector" matching "#phone" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -density-compact']//label[1]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -density-compact']//label[2]" should be visible
	When I click on the element with "CssSelector" matching "label.ty-wfm-options__item:nth-child(14)"	
	And The element with "CssSelector" matching "#carSelectionOne" should be visible
	When I Scroll to the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(2) > span.ty-wfm-options__label"
	When I click on the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(2) > span.ty-wfm-options__label"	
	And The element with "CssSelector" matching "#carSelectionOwnToyota" should be visible
	And The element with "CssSelector" matching "#year" should be visible
	And The element with "CssSelector" matching "#registration" should be visible
    And The element with "CssSelector" matching "input.ty-button" should be visible

Scenario: Toyota_WFM_ContactUs_EnquiryType_AC2
	Given I am on the main url with these extra parameters "/contact-us"
	Then I wait for element with "CssSelector" matching "#firstname" to be visible
	Then The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[1]" should contain "Company" text
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[2]" should contain "Finance" text 
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[3]" should contain "Fleet" text 
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[4]" should contain "Insurance" text 
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[5]" should contain "myToyota" text 
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[6]" should contain "Other" text 
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[7]" should contain "Vehicle" text 

Scenario: Toyota_WFM_ContactUs_PrefillMOI_AC7.1
	Given I am on the main url with these extra parameters "/contact-us?EnquiryType=vehicle&CarSelectionOne=Corolla "
    #When I click on the element with "CssSelector" matching ".ty-wfm-options.-align-center.-density-compact .ty-wfm-options__item:nth-child(14)"	
    When I Scroll to the element with "CssSelector" matching "#carSelectionOne"
    Then The element with "CssSelector" matching ".ty-wfm-options.-align-center.-density-compact .ng-valid-parse  + .ty-wfm-options__item:nth-child(14)" should be visible
	And The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"

Scenario: Toyota_WFM_ContactUs_PrefillMOIChange_AC8.1
	Given I am on the main url with these extra parameters "/contact-us?EnquiryType=vehicle&CarSelectionOne=Corolla"
    #When I click on the element with "CssSelector" matching ".ty-wfm-options.-align-center.-density-compact .ty-wfm-options__item:nth-child(14)"
	And The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Camry"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Camry"

Scenario Outline: Toyota_WFM_ContactUs_QueryStringGeneric_AC9.2
	Given I am on the main url with these extra parameters "<param>"
	Then The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[1]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[2]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[3]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[4]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[5]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[6]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options -align-center -density-compact']//label[7]" should be visible
	And The element with "CssSelector" matching "#message" should be visible
	And The element with "CssSelector" matching "#firstname" should be visible
	And The element with "CssSelector" matching "#lastname" should be visible
	And The element with "CssSelector" matching "#email" should be visible
	And The element with "CssSelector" matching "#phone" should be visible
	And The element with "CssSelector" matching ".ty-wfm-options__item:nth-child(2) > span.ty-wfm-options__label" should be visible
	And The element with "CssSelector" matching ".ty-wfm-options__item:nth-child(4) > span.ty-wfm-options__label" should be visible
	And The element with "CssSelector" matching "input.ty-button" should be visible

    Examples: 
        | param                         |
        | /contact-us?EnquiryType=fake  |
        | /contact-us?fake=vehicle      |

Scenario: Toyota_WFM_ContactUs_QueryStringGenericPartial_AC10
	Given I am on the main url with these extra parameters "/contact-us?EnquiryType=vehicle&CarSelectionOne=fake"
    #When I click on the element with "CssSelector" matching ".ty-wfm-options.-align-center.-density-compact .ty-wfm-options__item:nth-child(14)"
    When I Scroll to the element with "CssSelector" matching "#carSelectionOne"
    Then The element with "CssSelector" matching ".ty-wfm-options.-align-center.-density-compact .ng-valid-parse  + .ty-wfm-options__item:nth-child(14)" should be visible
	And The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching " "

@smoketest @skip_prod
Scenario: Toyota_WFM_ContactUs_ValidSubmission_AC11
	Given I am on the main url with these extra parameters "/contact-us"
	When I click on the element with "CssSelector" matching ".ty-wfm-options.-align-center.-density-compact .ty-wfm-options__item:nth-child(14)"
	And I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Camry"
	And I focus the element with "XPath" matching "//textarea[@id='message']" and enter this text "Test Message"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Sunil"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "Philip"
	And I focus the element with "CssSelector" matching "#email" and enter this text "tester@ie.com.au"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0404111222"
	And I click on the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(2) > span.ty-wfm-options__label"
    And I Scroll to the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(2) > span.ty-wfm-options__label"
	And I focus the dropdown with "CssSelector" matching "#carSelectionOwnToyota" and choose the option with "Text" matching "Camry"
    And I focus the dropdown with "CssSelector" matching "#year" and choose the option with "Text" matching "2015"
	And I focus the element with "CssSelector" matching "#registration" and enter this text "YSD123"
    And I Scroll to the element with "CssSelector" matching "input.ty-button"
	And I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

Scenario: Toyota_WFM_ContactUs_InvalidSubmission_AC12
	Given I am on the main url with these extra parameters "/contact-us"
	When I Scroll to the element with "CssSelector" matching "input.ty-button"
	And I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "XPath" matching "(//*[@class='message'])[1]" should be visible
    And The element with "XPath" matching "(//*[@class='message'])[4]" should be visible
    And The element with "XPath" matching "(//*[@class='message'])[5]" should be visible
    And The element with "XPath" matching "(//*[@class='message'])[6]" should be visible
    And The element with "XPath" matching "(//*[@class='message'])[7]" should be visible