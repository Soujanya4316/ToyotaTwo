@toyota @forms @skip_prod
Feature: Forms - Takata Recall
	As a customer
	I want to register for Takata Recall 
	So that Toyota can inform me whether I should replace my airbags


Background:
	Given I am on the main url with these extra parameters "/takata"

Scenario: Toyota_WFM_Takata_PageLoad_FieldsAvailable
	Then The element with "CssSelector" matching "h1" should be visible
    And The element with "CssSelector" matching "#ownership" should be visible
	And The element with "CssSelector" matching ".ty-wfm__section--rich-text" should be visible
    When The element with "CssSelector" matching "#vin" should NOT be visible
	And The element with "CssSelector" matching "#registration" should NOT be visible
	And The element with "CssSelector" matching "#state" should NOT be visible
	And The element with "CssSelector" matching "#firstname" should NOT be visible
	And The element with "CssSelector" matching "#lastname" should NOT be visible
    And The element with "CssSelector" matching "#email" should NOT be visible
    And The element with "CssSelector" matching "#phone" should NOT be visible
    And The element with "CssSelector" matching "#address" should NOT be visible
    And The element with "CssSelector" matching "input.ty-button" should NOT be visible

Scenario Outline: Toyota_WFM_Takata_Ownership_FieldsAvailable
    When I focus the dropdown with "CssSelector" matching "#ownership" and choose the option with "Text" matching "<ownership>"
    When I Scroll to the element with "CssSelector" matching "input.ty-button"
	And The element with "CssSelector" matching "#vin" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-wfm-field__helper--link" <visible_state_1> visible
    When I click on the element with "CssSelector" matching ".ty-wfm-field__helper--link"
    And The element with "CssSelector" matching ".ty-modal-panel" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-modal-panel__head" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-modal-panel-head__title" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-modal-panel-head__close" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-modal-panel__body" <visible_state_1> visible
    When I click on the element with "CssSelector" matching ".ty-modal-panel-head__close"
	And The element with "CssSelector" matching "#registration" <visible_state_1> visible
	And The element with "CssSelector" matching "#state" <visible_state_1> visible
	And The element with "CssSelector" matching "#firstname" <visible_state_1> visible
	And The element with "CssSelector" matching "#lastname" <visible_state_1> visible
    And The element with "CssSelector" matching "#email" <visible_state_1> visible
    And The element with "CssSelector" matching "#phone" <visible_state_1> visible
    And The element with "CssSelector" matching "#address" <visible_state_2> visible
    And The element with "CssSelector" matching "input.ty-button" <visible_state_1> visible

    Examples:
        | ownership | visible_state_1 | visible_state_2 |
        | I'm the new owner of this vehicle  | should be | should be |
        | I own this vehicle and need to update my details | should be | should be |
        | I've just sold this vehicle | should be | should NOT be |
        | This vehicle has been written off and destroyed | should be | should NOT be |
        | This vehicle was stolen and never recovered | should be | should NOT be |
        | I exported this vehicle overseas | should be | should NOT be |
        | I've never owned this vehicle | should be | should NOT be |

Scenario Outline: Toyota_WFM_Takata_ErrorMessages
    When I focus the dropdown with "CssSelector" matching "#ownership" and choose the option with "Text" matching "<ownership>"
    When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".validation-failed:nth-child(2) div.ty-wfm-field__validation-and-helper > span.message" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-wfm__section:nth-child(1) div.ty-wfm-field.validation-failed:nth-child(4) > span.message" <visible_state_1> visible
    And The element with "CssSelector" matching "#fnmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#lnmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#emailmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#phonemsg" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-wfm-textbox--has-dropdown + span.message" <visible_state_2> visible

    Examples:
        | ownership | visible_state_1 | visible_state_2 |
        | I'm the new owner of this vehicle  | should be | should be |   
        | I own this vehicle and need to update my details | should be | should be |
        | I've just sold this vehicle | should be | should NOT be |
        | This vehicle has been written off and destroyed | should be | should NOT be |
        | This vehicle was stolen and never recovered | should be | should NOT be |
        | I exported this vehicle overseas | should be | should NOT be |
        | I've never owned this vehicle | should be | should NOT be |

@skip_prod
Scenario Outline: Toyota_WFM_Takata_Owner_Yes_Submission
    When I focus the dropdown with "CssSelector" matching "#ownership" and choose the option with "Text" matching "<ownership>"
    When I focus the element with "CssSelector" matching "#vin" and enter this text "JTDKB3FU303534896"
    And I focus the element with "CssSelector" matching "#registration" and enter this text "ABC123"
    And I focus the dropdown with "CssSelector" matching "#state" and choose the option with "Text" matching "Tasmania"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
    And I focus the element with "CssSelector" matching "#address" and enter this text "432 St Kilda Rd"
    Then The element with "CssSelector" matching ".autocomplete" should be visible
    Then The element with "CssSelector" matching ".suggestion-item.ng-scope.selected" should contain "432 St Kilda Rd, MELBOURNE VIC 3004" text
    When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
    Then The element with "CssSelector" matching ".remove-button" should be visible
    When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-wfm-form-response--success"
    Then The element with "CssSelector" matching ".ty-wfm-field.ty-wfm-field--rich-text" should be visible
    And The element with "CssSelector" matching ".ty-wfm-field--final-cta" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-wfm-field--final-cta"
    Then The element with "CssSelector" matching ".ty-wfm-field--final-cta" should contain "HOMEPAGE" text
    
    Examples:
        | ownership |
        | I'm the new owner of this vehicle | 
        | I own this vehicle and need to update my details |

@skip_prod
Scenario Outline: Toyota_WFM_Takata_Owner_No_Submission
    When I focus the dropdown with "CssSelector" matching "#ownership" and choose the option with "Text" matching "<ownership>"
    When I focus the element with "CssSelector" matching "#vin" and enter this text "JTDKB3FU303534896"
    And I focus the element with "CssSelector" matching "#registration" and enter this text "ABC123"
    And I focus the dropdown with "CssSelector" matching "#state" and choose the option with "Text" matching "Tasmania"
	And I focus the element with "CssSelector" matching "#firstname" and enter this text "Test"
	And I focus the element with "CssSelector" matching "#lastname" and enter this text "User"
	And I focus the element with "CssSelector" matching "#email" and enter this text "forms@mailinator.com"
	And I focus the element with "CssSelector" matching "#phone" and enter this text "0405123456"
    When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".ty-wfm-form-response--success" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-wfm-form-response--success"
    Then The element with "CssSelector" matching ".ty-wfm-field.ty-wfm-field--rich-text" should be visible
    And The element with "CssSelector" matching ".ty-wfm-field--final-cta" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-wfm-field--final-cta"
    Then The element with "CssSelector" matching ".ty-wfm-field--final-cta" should contain "HOMEPAGE" text
    
    Examples:
        | ownership |
        | I've just sold this vehicle |
        | This vehicle has been written off and destroyed |
        | This vehicle was stolen and never recovered |
        | I exported this vehicle overseas |
        | I've never owned this vehicle |

Scenario Outline: Toyota_WFM_Takata_Owner_Yes_Invalid_Submission
    When I focus the dropdown with "CssSelector" matching "#ownership" and choose the option with "Text" matching "<ownership>"
    When I focus the element with "CssSelector" matching "#vin" and enter this text "IIIIIIIIIIIIIIIII"
    And I focus the element with "CssSelector" matching "#registration" and enter this text "@@@@@@@@@"
    And I focus the dropdown with "CssSelector" matching "#state" and choose the option with "Text" matching "South Australia"
    And I focus the element with "CssSelector" matching "#firstname" and enter this text "11111"
    And I focus the element with "CssSelector" matching "#lastname" and enter this text "22222"
    And I focus the element with "CssSelector" matching "#email" and enter this text "aaaaaaaa"
    And I focus the element with "CssSelector" matching "#phone" and enter this text "22222222"
    And I focus the element with "CssSelector" matching "#address" and enter this text "abcdefghij"
    When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".validation-failed:nth-child(2) div.ty-wfm-field__validation-and-helper > span.message" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-wfm__section:nth-child(1) div.ty-wfm-field.validation-failed:nth-child(4) > span.message" <visible_state_1> visible
    And The element with "CssSelector" matching "#fnmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#lnmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#emailmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#phonemsg" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-wfm-textbox--has-dropdown + span.message" <visible_state_2> visible
    
    Examples:
        | ownership | visible_state_1 | visible_state_2 |
        | I'm the new owner of this vehicle  | should be | should be |

Scenario Outline: Toyota_WFM_Takata_Owner_Yes_Invalid_Submission
    When I focus the dropdown with "CssSelector" matching "#ownership" and choose the option with "Text" matching "<ownership>"
    When I focus the element with "CssSelector" matching "#vin" and enter this text "IIIIIIIIIIIIIIIII"
    And I focus the element with "CssSelector" matching "#registration" and enter this text "@@@@@@@@@"
    And I focus the dropdown with "CssSelector" matching "#state" and choose the option with "Text" matching "South Australia"
    And I focus the element with "CssSelector" matching "#firstname" and enter this text "11111"
    And I focus the element with "CssSelector" matching "#lastname" and enter this text "22222"
    And I focus the element with "CssSelector" matching "#email" and enter this text "aaaaaaaa"
    And I focus the element with "CssSelector" matching "#phone" and enter this text "22222222"
    When I click on the element with "CssSelector" matching "input.ty-button"
    Then The element with "CssSelector" matching ".validation-failed:nth-child(2) div.ty-wfm-field__validation-and-helper > span.message" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-wfm__section:nth-child(1) div.ty-wfm-field.validation-failed:nth-child(4) > span.message" <visible_state_1> visible
    And The element with "CssSelector" matching "#fnmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#lnmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#emailmsg" <visible_state_1> visible
    And The element with "CssSelector" matching "#phonemsg" <visible_state_1> visible
    And The element with "CssSelector" matching ".ty-wfm-textbox--has-dropdown + span.message" <visible_state_2> visible
    
    Examples:
        | ownership | visible_state_1 | visible_state_2 |
        | I've just sold this vehicle | should be | should NOT be |