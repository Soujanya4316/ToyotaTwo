@toyota @forms
Feature: Forms - Keep Me Informed
	As a customer
	I want to sign for marketing materials from Toyota
	So that I can stay informed of any new offers/features/releases 

Scenario: Toyota_WFM_KeepMeInformed_FieldsAvailable_AC1
	Given I am on the main url with these extra parameters "/keep-me-informed"
	Then The element with "CssSelector" matching "#firstname" should be visible
	And The element with "CssSelector" matching "#lastname" should be visible
	And The element with "CssSelector" matching "#email" should be visible
	And The element with "CssSelector" matching "#phone" should be visible
	And The element with "CssSelector" matching "#carSelectionOne" should be visible
	And The element with "CssSelector" matching "#carSelection0_ad" should be visible
	And The element with "CssSelector" matching "#carSelection1_ad" should be visible
	And The element with "CssSelector" matching ".ty-wfm-options__item:nth-child(2)" should be visible
	And The element with "CssSelector" matching ".ty-wfm-options__item:nth-child(4)" should be visible
	And The element with "CssSelector" matching ".ty-wfm-options__item:nth-child(6)" should be visible
    And The element with "CssSelector" matching ".ty-wfm-options__item:nth-child(6)" should be visible
    And The element with "CssSelector" matching "input.ty-button" should be visible

Scenario: Toyota_WFM_KeepMeInformed_PrefillMOI_AC2
	Given I am on the main url with these extra parameters "/keep-me-informed?CarSelectionOne=corolla"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"

Scenario: Toyota_WFM_KeepMeInformed_PrefillMOIChange_AC3
	Given I am on the main url with these extra parameters "/keep-me-informed?CarSelectionOne=corolla"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Corolla"
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Camry"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching "Camry"

Scenario: Toyota_WFM_KeepMeInformed_QueryStringGeneric_AC4
	Given I am on the main url with these extra parameters "/keep-me-informed?CarSelectionOne=fake"
	Then The dropdown with "CssSelector" matching "#carSelectionOne" should have "Text" matching " "

Scenario: Toyota_WFM_KeepMeInformed_Validation_on_Car_Selections_1_and_2_are_same_AC5
	Given I am on the main url with these extra parameters "/keep-me-informed"
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Tarago"
    Then The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(2) div.ty-wfm-field:nth-child(2) div.validation-failed span.message > span.ng-scope" should be visible
    And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(3) div.ty-wfm-field:nth-child(2) div.validation-failed span.message > span.ng-scope" should be visible

Scenario: Toyota_WFM_KeepMeInformed_Validation_on_Car_Selections_2_and_3_are_same_AC6
	Given I am on the main url with these extra parameters "/keep-me-informed"
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Camry"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Yaris"
    Then The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(3) div.ty-wfm-field:nth-child(2) div.validation-failed span.message > span.ng-scope" should be visible
    And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(3) div.ty-wfm-field:nth-child(3) div.validation-failed span.message > span.ng-scope" should be visible

Scenario: Toyota_WFM_KeepMeInformed_Validation_on_Car_Selections_1_and_3_are_same_AC7
	Given I am on the main url with these extra parameters "/keep-me-informed"
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Camry"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Yaris"
    Then The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(2) div.ty-wfm-field:nth-child(2) div.validation-failed span.message > span.ng-scope" should be visible
    And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(3) div.ty-wfm-field:nth-child(3) div.validation-failed span.message > span.ng-scope" should be visible

Scenario: Toyota_WFM_KeepMeInformed_Validation_on_Car_Selections_all_are_same_AC8
	Given I am on the main url with these extra parameters "/keep-me-informed"
	When I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "Yaris"
    Then The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(2) div.ty-wfm-field:nth-child(2) div.validation-failed span.message > span.ng-scope" should be visible
    And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(3) div.ty-wfm-field:nth-child(2) div.validation-failed span.message > span.ng-scope" should be visible
    And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(3) div.ty-wfm-field:nth-child(3) div.validation-failed span.message > span.ng-scope" should be visible

Scenario: Toyota_WFM_KeepMeInformed_InvalidSubmission_AC9
	Given I am on the main url with these extra parameters "/keep-me-informed"
	When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching "#fnmsg" should be visible
    And The element with "CssSelector" matching "#lnmsg" should be visible
    And The element with "CssSelector" matching "#emailmsg" should be visible
    And The element with "CssSelector" matching "#phonemsg" should be visible
    And The element with "CssSelector" matching ".ty-wfm__section--last-field-has-message:nth-child(2) div.ty-wfm-field:nth-child(2) div.validation-failed span.message > span.ng-scope" should be visible 

@skip_prod
Scenario: Toyota_WFM_KeepMeInformed_ValidSubmission_With_All_Fileds_AC10
	Given I am on the main url with these extra parameters "/keep-me-informed"
	When I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I focus the dropdown with "CssSelector" matching "#carSelection0_ad" and choose the option with "Text" matching "Prius"
	And I focus the dropdown with "CssSelector" matching "#carSelection1_ad" and choose the option with "Text" matching "86"
    And I click on the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(2)"
    And I click on the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(4)"
    And I click on the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(6)"
    And I click on the element with "CssSelector" matching ".ty-wfm-options__item:nth-child(8)"
	And I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-wfm-form-response--success"

@smoketest @skip_prod
Scenario: Toyota_WFM_KeepMeInformed_ValidSubmission_With_Mandatory_fields_AC11
	Given I am on the main url with these extra parameters "/keep-me-informed"
	When I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
	And I focus the dropdown with "CssSelector" matching "#carSelectionOne" and choose the option with "Text" matching "Yaris"
	And I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-wfm-form-response--success"