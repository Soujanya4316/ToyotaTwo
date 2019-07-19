@toyota @accessories @ignore
Feature: Accessories Page - HiLux
	As a customer
	I want to register my interest 
	So that I can stay up to date on a particular product 


Background:
	Given I am on the main url with these extra parameters "/main/Specflow/test-pages/accessories"

@smoketest 
 Scenario: Toyota_AccessoriesPage_AllItemsVisible
	Then The element with "CssSelector" matching "h4.ty-accessories__heading" should be visible
	And The element with "CssSelector" matching ".ty-accessories__tab:nth-child(1)" should be visible
	And The element with "CssSelector" matching ".ty-accessories__tab:nth-child(2)" should be visible
	And The element with "CssSelector" matching ".ty-accessories__tab:nth-child(3)" should be visible
	And The element with "CssSelector" matching ".ty-accessories__tab:nth-child(4)" should be visible
	And The element with "CssSelector" matching ".ty-accessories__tab:nth-child(5)" should be visible
	And The element with "CssSelector" matching ".ty-accessories__tab:nth-child(6)" should be visible
	And The element with "CssSelector" matching ".ty-accessories__accessories-count" should be visible
	And The element with "XPath" matching "(//*[@class='ty-accessories__accessory ng-scope'])[1]" should be visible
	And The element with "XPath" matching "(//*[@class='ty-accessories__accessory ng-scope'])[1]//*[@class='ty-accessories__accessory-title']" should be visible
	And The element with "XPath" matching "(//*[@class='ty-accessories__accessory ng-scope'])[1]//*[@class='ty-accessories__accessory-description']" should be visible
	And The element with "XPath" matching "(//*[@class='ty-accessories__accessory ng-scope'])[1]//*[@class='ty-accessories__accessory-price']" should be visible
	And The element with "CssSelector" matching ".ty-disclaimer__title" should be visible
	And The element with "CssSelector" matching ".ty-disclaimer__description" should be visible