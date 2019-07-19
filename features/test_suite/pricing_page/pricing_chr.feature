@toyota @pricing
Feature: Pricing Page - CHR
	As a Customer
	I want to be able to see the CHR Pricing Page
	So that I know the pricing details of the vehicle

Background:
	Given I navigate to the CHR Pricing page

Scenario: Pricing CHR - Roof paints vehicle images should be displayed for KOBA
    When I select the location "3000" on the page
    When I select the Koba grade
    Then I should be able to see the vehicle image "kobaYellow"
    When I select Koba with yellow colour and black roof
    Then I should be able to see the vehicle image "kobaYellowWithBlackRoof"
