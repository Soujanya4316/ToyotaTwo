@toyota @pricing
Feature: Pricing Page - Rav4
	As a Customer
	I want to be able to see the Rav4 Pricing Page
	So that I know the pricing details of the vehicle

Background:
	Given I navigate to the Rav4 Pricing page

Scenario: Pricing Rav4 - Buy Now CTA should be displayed for 3000
    When I select the location "3000" on the page
    Then CTA1 should be "BUY ONLINE"
    And CTA1 should have the "BUY ONLINE" URL

Scenario: Pricing Rav4 - Accessories should be enabled for selection
    Then the accessory "Full Size Spare Wheel" should be enabled
    And the accessory "Full Size Spare Wheel" can be selected
    And the accessory "Premium Interior" should be disabled

Scenario: Pricing Rav4 - More trims should be present for Cruiser Grade
    When I select the Cruiser grade
    Then I should see 3 trims
    When I select the Graphite Colour
    Then I should see 2 trims
    And I should not see the beige leather trim