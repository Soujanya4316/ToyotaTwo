@toyota @finddealer 
Feature: Find a Dealer
	As a Customer
	I want to be able to see the Find a Dealer Page
	So that I know the details of the dealer

Background:
	Given I am on the main url with these extra parameters "/find-a-dealer"

@smoketest
Scenario: Toyota_FindADealer_AllItemsVisible
    Then The element with "XPath" matching "//div[contains(@class, '-background-image')][contains(@style, '.jpg')]" should be visible
    Then The element with "CssSelector" matching ".ty-tg-label" should be visible
    And The element with "CssSelector" matching ".ty-typography.-keep-margin-bottom.-theme-black>h2" should be visible
    And The element with "CssSelector" matching ".tags" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__heading" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(2)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(4)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(6)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(8)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(10)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(12)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(14)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__option:nth-child(16)" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-results" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-results-onboarding__text" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-results-onboarding > svg" should be visible

@smoketest 
Scenario: Toyota_FindADealer_CheckFiltering
    When I focus the element with "CssSelector" matching ".tags" and enter this text "3000"
    And I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
    Then The element with "CssSelector" matching ".remove-button" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-results__cell.ng-scope:nth-child(1) > .ty-find-a-dealer-result" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-results__cell.ng-scope:nth-child(2) > .ty-find-a-dealer-result" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-results__cell.ng-scope:nth-child(3) > .ty-find-a-dealer-result" should be visible
    When I Scroll to the element with "CssSelector" matching ".ty-find-a-dealer-results__cell.ng-scope:nth-child(1) > .ty-find-a-dealer-result"

@smoketest @test
Scenario: Toyota_FindADealer_CheckStateFilters
	Then The url should contain "/find-a-dealer"
	When I Scroll to the element with "XPath" matching "//*[@class='ty-find-a-dealer-results-onboarding']"	
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(2)"
	And The url should contain "/find-a-dealer#ACT"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for ACT" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(2)" should contain "ACT" text 
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(4)"
	And The url should contain "/find-a-dealer#NSW"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for NSW" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(4)" should contain "NSW" text
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(6)"
	And The url should contain "/find-a-dealer#NT"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for NT" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(6)" should contain "NT" text
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(8)"
	And The url should contain "/find-a-dealer#QLD"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for QLD" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(8)" should contain "QLD" text
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(10)"
	And The url should contain "/find-a-dealer#SA"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for SA" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(10)" should contain "SA" text
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(12)"
	And The url should contain "/find-a-dealer#TAS"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for TAS" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(12)" should contain "TAS" text
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(14)"
	And The url should contain "/find-a-dealer#VIC"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for VIC" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(14)" should contain "VIC" text
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(16)"
	And The url should contain "/find-a-dealer#WA"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "dealerships for WA" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(16)" should contain "WA" text

Scenario: Toyota_FindADealer_CheckDealerDetails
 	When I focus the element with "CssSelector" matching ".tags" and enter this text "Dandenong"
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I Scroll to the element with "CssSelector" matching ".ty-cta-stack:nth-child(5) >.ty-cta"
    Then The element with "CssSelector" matching ".remove-button" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__name" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__label" should be visible
    And The element with "CssSelector" matching "img.ty-find-a-dealer-result__header-image" should be visible
    And The element with "CssSelector" matching "img.ty-find-a-dealer-result__header-image[src*='/-/media/']" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__address" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__address[href*='https://www.google.com/maps/search/']" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__phone" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__website" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__website[href*='http://www.pattersoncheneytoyota.com.au/']" should be visible
    And The element with "CssSelector" matching "img.ty-find-a-dealer-result__service-badge-image" should be visible
    And The element with "CssSelector" matching "img.ty-find-a-dealer-result__service-badge-image[src*='/-/media/']" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__service-badge-info" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__services" should be visible
    And The element with "CssSelector" matching ".ty-cta-stack:nth-child(5) > .ty-cta" should be visible
    And The element with "CssSelector" matching ".ty-cta-stack:nth-child(5) > .ty-cta[href*='https://www.toyota.com.au/contact-a-dealer']" should be visible
    And The element with "CssSelector" matching ".ng-scope:nth-child(6) div.ty-cta-stack > .ty-cta" should be visible
    And The element with "CssSelector" matching ".ng-scope:nth-child(6) div.ty-cta-stack > .ty-cta[href*='https://pattersoncheneytoyota.dealer.toyota.com.au/service/booking']" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__name" should contain "DANDENONG" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__label" should contain "Patterson Cheney Toyota" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__address" should contain "DANDENONG VIC, 3175" text
	And The element with "CssSelector" matching ".ty-find-a-dealer-result__phone" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__phone" should contain "Ph: 03" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__website" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-result__services" should contain "Parts, Fleet, Service, Used, Order & Collect, New, Express Maintenance" text
    And The element with "CssSelector" matching ".ty-cta-stack:nth-child(5) > .ty-cta" should contain "DEALER" text
    And The element with "CssSelector" matching ".ng-scope:nth-child(6) div.ty-cta-stack > .ty-cta" should contain "Book a service" text
    When I click on the element with "CssSelector" matching ".ty-find-a-dealer-result__service-badge-info"
	Then The element with "CssSelector" matching ".ty-tooltip-icon .ty-tooltip-callout__box" should be visible
    And The element with "CssSelector" matching ".ty-tooltip-icon .ty-tooltip-callout__content" should contain "Toyota Fleet offers a complete range" text

Scenario: Toyota_FindADealer_CheckDisabledStates	
 	When I focus the element with "CssSelector" matching ".tags" and enter this text "Dandenong"
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
	When I Scroll to the element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count"
    Then The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(2)" should contain "ACT" text 
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(4)" should contain "NSW" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(6)" should contain "NT" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(8)" should contain "QLD" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(10)" should contain "SA" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(12)" should contain "TAS" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(14)" should contain "VIC" text
    And The element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option.is-disabled:nth-child(16)" should contain "WA" text

Scenario: Toyota_FindADealer_CheckFilters
    When I Scroll to the element with "XPath" matching "//*[@class='ty-find-a-dealer-results-onboarding']"
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(2)"
    Then The element with "CssSelector" matching "button.ty-find-a-dealer-filter__heading" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__clear-button.is-disabled" should be visible
    When I click on the element with "CssSelector" matching "button.ty-find-a-dealer-filter__heading"
    Then The element with "CssSelector" matching ".ty-find-a-dealer-filter__heading" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__close-button" should be visible
    And The element with "CssSelector" matching "h5" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-disclaimer" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-disclaimer" should contain "Some services are not available in your region" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(1) > label" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(2) > label" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(3) > label" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(4).is-invalid > label" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(5) > label" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(6) > label" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(7) > label" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__show-dealers-button" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__clear-filters-cta" should be visible
@test
Scenario: Toyota_FindADealer_CheckFilterFunctionality
    When I Scroll to the element with "XPath" matching "//*[@class='ty-find-a-dealer-results-onboarding']"
    When I click on the element with "CssSelector" matching "label.ty-find-a-dealer-state-tabs__option:nth-child(2)"
    And I click on the element with "CssSelector" matching "button.ty-find-a-dealer-filter__heading"
    Then The element with "CssSelector" matching "div.ty-find-a-dealer-filter__heading > span.ng-binding:nth-child(3)" should contain "0" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__show-dealers-button" should contain "Show 5 dealers" text
    When I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(1) > label"
    And I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(2) > label"
    And I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(3) > label"
    And I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(5) > label"
    Then The element with "CssSelector" matching "div.ty-find-a-dealer-filter__heading > span.ng-binding:nth-child(3)" should contain "4" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__show-dealers-button" should contain "Show 3 dealers" text
    When I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__clear-filters-cta"
    Then The element with "CssSelector" matching "div.ty-find-a-dealer-filter__heading > span.ng-binding:nth-child(3)" should contain "0" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__show-dealers-button" should contain "Show 5 dealers" text
    When I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(1) > label"
    And I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(2) > label"
    And I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(3) > label"
    And I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__service-type-item:nth-child(5) > label"
    When I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__show-dealers-button"
    And I Scroll to the element with "CssSelector" matching ".ty-find-a-dealer-results__cell.ng-scope:nth-child(1) > .ty-find-a-dealer-result"
    Then The element with "CssSelector" matching " div.ty-find-a-dealer-filter__section-left div.ty-find-a-dealer-filter__heading > span.ng-binding:nth-child(3)" should contain "4" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__clear-button" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__clear-button.is-disabled" should NOT exist on the page
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "Showing 3 dealerships for ACT" text
    When I click on the element with "CssSelector" matching ".ty-find-a-dealer-filter__clear-button"
    Then The element with "CssSelector" matching " div.ty-find-a-dealer-filter__section-left div.ty-find-a-dealer-filter__heading > span.ng-binding:nth-child(3)" should contain "0" text
    And The element with "CssSelector" matching ".ty-find-a-dealer-filter__clear-button.is-disabled" should be visible
    And The element with "CssSelector" matching ".ty-find-a-dealer-state-tabs__result-count" should contain "Showing 5 dealerships for ACT" text
