@toyota @forms
Feature: Forms - Register My Interest (Generic)
	As a customer
	I want to register my interest 
	So that I can stay up to date on a particular product 

Background:
	Given I am on the main url with these extra parameters "/all-new-rav4"
    Then I Scroll to the element with "CssSelector" matching "form[name='wfm'] h1"
 
Scenario: Toyota_WFM_AllNewRav4_Heading_AC1
	Then The element with "CssSelector" matching "form[name='wfm'] h1" should contain "Want to know more" text

Scenario: Toyota_WFM_AllNewRav4_FieldsAvailable_AC2
	Then The element with "CssSelector" matching "form[name='wfm'] h1" should be visible
	And The element with "CssSelector" matching "#firstname" should be visible
	And The element with "CssSelector" matching "#lastname" should be visible
	And The element with "CssSelector" matching "#email" should be visible
	And The element with "CssSelector" matching "#phone" should be visible
	And The element with "CssSelector" matching "#findADealer" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options']//label[1]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options']//label[2]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options']//label[3]" should be visible
	And The element with "XPath" matching "//div[@class='ty-wfm-options']//label[4]" should be visible
    And The element with "CssSelector" matching ".ty-wfm-agreement-intro" should be visible
    And The element with "CssSelector" matching "input.ty-button" should be visible
    
@smoketest @skip_prod
Scenario: Toyota_WFM_AllNewRav4_Mandatory_Fields_ValidSubmission_AC3
	When I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	When I click on the element with "CssSelector" matching "input.ty-button"
	Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

@smoketest @skip_prod
Scenario: Toyota_WFM_AllNewRav4_All_Fields_ValidSubmission_AC4
	When I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the element with "CssSelector" matching "#findADealer input" and enter this text "3029"
	Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	Then The element with "CssSelector" matching "#findADealer" should contain "3029" text
	When I click on the element with "CssSelector" matching ".ty-wfm-field .ty-wfm-options > .ty-wfm-options__item.ng-scope"
	And I click on the element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(1)"
	And I click on the element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(2)"
	And I click on the element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(3)"
	And I click on the element with "CssSelector" matching "input[id^=buying-timeline]+label:nth-of-type(4)"
	And I click on the element with "CssSelector" matching "input.ty-button"
	Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible

@smoketest
Scenario: Toyota_WFM_AllNewRav4_InvalidSubmission_AC5
	When I click on the element with "CssSelector" matching "input.ty-button"
	Then The element with "CssSelector" matching "#fnmsg" should be visible
	And The element with "CssSelector" matching "#lnmsg" should be visible
	And The element with "CssSelector" matching "#emailmsg" should be visible
	And The element with "CssSelector" matching "#phonemsg" should be visible
	When I focus the element with "CssSelector" matching "#findADealer input" and enter this text "testing123"
	And I click on the element with "XPath" matching "//div[@class='ty-wfm-options']//label[1]"
	And The element with "CssSelector" matching ".ty-wfm__breakout-panel section.ty-wfm__section--last-field-has-message:nth-child(1) .ty-wfm-textbox__label" should be visible
    And The element with "CssSelector" matching ".ty-wfm__breakout-panel section.ty-wfm__section--last-field-has-message:nth-child(1) .message" should be visible
