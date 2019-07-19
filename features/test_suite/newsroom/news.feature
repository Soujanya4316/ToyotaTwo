@toyota @news 
Feature: News Room - Landing & Article Page
	As a Customer
	I want to be able to see the newsroom landing page
	So that I can see the list of articles that I can access

Background:
    Given I am on the main url with these extra parameters "/news"

 @smoketest 
 Scenario: News Room - Landing - All Items are visible
	Then The element with "CssSelector" matching ".ty-hero-text__foreground" should be visible
	And The element with "CssSelector" matching ".ty-press-listing" should be visible
	And The element with "CssSelector" matching ".ty-press-listing-filter-panel" should be visible
    And The element with "CssSelector" matching ".ty-press-listing-results" should be visible
	And The element with "CssSelector" matching ".ty-press-listing-filter-panel__results-count" should be visible
    And The element with "CssSelector" matching ".ty-press-listing-filter-panel__results-count" should contain "Showing" text
    And The element with "CssSelector" matching ".ty-press-listing-filter-panel__results-count" should contain "results" text 
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1)" should be visible
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-typography" should be visible
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-tg-label" should be visible
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-tg-h4" should be visible
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-tg-link-primary" should be visible
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ng-binding > p" should be visible
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-press-listing-result__image" should be visible

Scenario: News Room - Landing - Lazy Loading
	Then The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1)" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(2)" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(3)" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(4)" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(5)" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(6)" should NOT exist on the page
    When I Scroll to the element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(5)"
	Then I wait for "1" seconds
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(6)" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(10)" should exist on the page
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(11)" should NOT exist on the page

Scenario: News Room - Landing - Article Image is Displayed
	Then The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-press-listing-result__image" should exist on the page
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(2) .ty-press-listing-result__image" should exist on the page
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(3) .ty-press-listing-result__image" should exist on the page
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(4) .ty-press-listing-result__image" should exist on the page
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(5) .ty-press-listing-result__image" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(6) .ty-press-listing-result__image" should NOT exist on the page
    When I Scroll to the element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(5) .ty-press-listing-result__image"
    Then I wait for "1" seconds
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(6) .ty-press-listing-result__image" should exist on the page
	And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(10) .ty-press-listing-result__image" should exist on the page
    And The element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(11) .ty-press-listing-result__image" should NOT exist on the page

Scenario: News Room - Navtigating to Article page by clicking Title
	When I click on the element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-press-listing-result__title"
	Then The element with "CssSelector" matching ".ty-press-release__title" should exist on the page
    And The element with "CssSelector" matching ".ty-press-release__date" should exist on the page
    And The element with "CssSelector" matching ".ty-press-release__image" should exist on the page
    And The element with "CssSelector" matching ".ty-press-release__content" should exist on the page

Scenario: News Room - Navtigating to Article page by clicking Read More link
	When I click on the element with "CssSelector" matching ".ty-press-listing-results__result:nth-of-type(1) .ty-tg-link-primary"
	Then The element with "CssSelector" matching ".ty-press-release__title" should exist on the page
    And The element with "CssSelector" matching ".ty-press-release__date" should exist on the page
    And The element with "CssSelector" matching ".ty-press-release__image" should exist on the page
    And The element with "CssSelector" matching ".ty-press-release__content" should exist on the page
    