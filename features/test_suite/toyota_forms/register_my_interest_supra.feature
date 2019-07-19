@toyota @forms
Feature: Forms - Register My Interest (Supra)
	As a customer
	I want to register my interest on Supra
	So that I can stay up to date on Supra 


Background:
	Given I am on the main url with these extra parameters "/all-new-supra"
    Then I Scroll to the element with "CssSelector" matching "form[name='wfm'] h1"

@smoketest 
Scenario: Toyota_WFM_AllNewSupra_Heading_AC1
	Then The element with "CssSelector" matching "form[name='wfm'] h1" should contain "in the loop" text

Scenario: Toyota_WFM_AllNewSupra_FieldsAvailable_AC2
	Then The element with "CssSelector" matching "form[name='wfm'] h1" should be visible
	And The element with "CssSelector" matching "#firstname" should be visible
	And The element with "CssSelector" matching "#lastname" should be visible
	And The element with "CssSelector" matching "#email" should be visible
	And The element with "CssSelector" matching "#phone" should be visible
	And The element with "CssSelector" matching "#carSelectionOne" should be visible
    And The element with "CssSelector" matching "#carSelectionTwo" should be visible
    And The element with "CssSelector" matching ".ty-wfm-agreement-intro" should be visible
    And The element with "CssSelector" matching "input.ty-button" should be visible
    
@smoketest @skip_prod
Scenario: Toyota_WFM_AllNewSupra_ValidSubmission_AC3
	When I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
    Then The element with "CssSelector" matching "#carSelectionOne" should contain "Supra" text
	When I focus the dropdown with "CssSelector" matching "#carSelectionTwo" and choose the option with "Text" matching "Camry"
	Then The element with "CssSelector" matching "#carSelectionTwo" should contain "Camry" text
	When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-wfm-form-response--success"

Scenario: Toyota_WFM_AllNewSupra_InvalidSubmission_AC4
	When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching "#fnmsg" should be visible
	And The element with "CssSelector" matching "#lnmsg" should be visible
	And The element with "CssSelector" matching "#emailmsg" should be visible
	And The element with "CssSelector" matching "#phonemsg" should be visible
