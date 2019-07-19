@toyota @range
Feature: Range Page - HiLux

	As a Customer
	I want to be able to see the Range page
	So that I can compare the grades of the same model

Background:
	Given I am on the main url with these extra parameters "/main/hilux/range"

 @smoketest
 Scenario: Toyota_RangePage_Pg1_AllItemsVisible
	Then The element with "CssSelector" matching ".ty-range-page__running-head" should be visible
    And The element with "CssSelector" matching ".owl-next" should be visible
	And The element with "CssSelector" matching ".owl-prev.disabled" should exist on the page

	And The element with "CssSelector" matching "h1.ty-range-page__running-head" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) h2.ty-range-page-grade__heading" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) h2.ty-range-page-grade__heading" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) h2.ty-range-page-grade__heading" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(1) img" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) img" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) img" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(1) h2.ty-range-page-grade__byline" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) h2.ty-range-page-grade__byline" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) h2.ty-range-page-grade__byline" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) p.ty-range-page-grade__description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) p.ty-range-page-grade__description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) p.ty-range-page-grade__description" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(1) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(2) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(1) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(2) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(1) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(2) > h3" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__value" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(1) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(2) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(1) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(2) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(1) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(2) .ty-disclaimer-ref" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__variant-list" should be visible

	When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__ksps .ty-range-page-section__header"

	Then The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__ksps .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-grade__ksps .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-grade__ksps .ty-range-page-section__header" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__ksps .ty-range-page-section__body" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-grade__ksps .ty-range-page-section__body" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-grade__ksps .ty-range-page-section__body" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__ksps .ty-range-page-section__footer" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-grade__ksps .ty-range-page-section__footer" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-grade__ksps .ty-range-page-section__footer" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__option-packs .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-grade__option-packs .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-grade__option-packs .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item" should be visible

	When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__ksps .ty-range-page-section__footer"
	When I click on the element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__ksps .ty-range-page-section__footer"

	Then The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__ksps .ty-range-page-section__footer .ty-svg-icon__accordion-collapse" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-page-grade__ksps .ty-range-page-section__footer .ty-svg-icon__accordion-collapse" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-page-grade__ksps .ty-range-page-section__footer .ty-svg-icon__accordion-collapse" should be visible

    When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item"

    Then The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-driveaway-pricing-error__location-pin" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-driveaway-pricing-error__location-pin" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-driveaway-pricing-error__location-pin" should be visible

    When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(1) .ty-driveaway-pricing-error__location-pin"

	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-driveaway__error:nth-child(4) .ty-driveaway-pricing-error__label" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-driveaway__error:nth-child(4) .ty-driveaway-pricing-error__label" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-driveaway__error:nth-child(4) .ty-driveaway-pricing-error__label" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-driveaway__error:nth-child(4) .ty-driveaway-pricing-error__sublabel" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-driveaway__error:nth-child(4) .ty-driveaway-pricing-error__sublabel" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-driveaway__error:nth-child(4) .ty-driveaway-pricing-error__sublabel" should be visible

    When I click on the element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-driveaway__error:nth-child(4) .ty-driveaway-pricing-error__label"
    And I focus the element with "CssSelector" matching "input" and enter this text "3000"
    Then The element with "CssSelector" matching ".suggestion-list" should be visible
	When I click on the element with "CssSelector" matching ".suggestion-item.ng-scope.selected"
    When I click on the element with "CssSelector" matching ".location-info__dealership:nth-child(5) .location-info__dealership-header > a:nth-child(1)"

	Then The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-driveaway-pricing > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-driveaway-pricing > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-driveaway-pricing > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-driveaway-pricing .ty-driveaway-pricing__value" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-driveaway-pricing .ty-driveaway-pricing__value" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-driveaway-pricing .ty-driveaway-pricing__value" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-driveaway-pricing .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-driveaway-pricing .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-driveaway-pricing .ty-disclaimer-ref" should be visible  
	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-driveaway-pricing .ty-driveaway-pricing__base-variant-description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-driveaway-pricing .ty-driveaway-pricing__base-variant-description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-driveaway-pricing .ty-driveaway-pricing__base-variant-description" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-range-driveaway__price:nth-child(1) > div.ty-range-driveaway__location-indicator" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-range-driveaway__price:nth-child(1) > div.ty-range-driveaway__location-indicator" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-range-driveaway__price:nth-child(1) > div.ty-range-driveaway__location-indicator" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-button" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-button" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-button" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(1) .ty-link-with-icon" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(2) .ty-link-with-icon" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(3) .ty-link-with-icon" should be visible

    When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(1) .ty-link-with-icon"

Scenario: Toyota_RangePage_Pg1_ScrltoPg2 
    When I click on the element with "CssSelector" matching ".owl-next > svg:nth-child(1)"
    Then The element with "CssSelector" matching ".owl-prev" should be visible
    And The element with "CssSelector" matching ".owl-next" should be visible

Scenario: Toyota_RangePage_Pg4_AllItemsVisible
    When I click on the element with "CssSelector" matching ".owl-next > svg:nth-child(1)"
    When I click on the element with "CssSelector" matching ".owl-next > svg:nth-child(1)"
    When I click on the element with "CssSelector" matching ".owl-next > svg:nth-child(1)"
    
    Then The element with "CssSelector" matching ".owl-prev" should be visible
	And The element with "CssSelector" matching ".owl-next.disabled" should exist on the page

	And The element with "CssSelector" matching "h1.ty-range-page__running-head" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(4) h2.ty-range-page-grade__heading" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) h2.ty-range-page-grade__heading" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) h2.ty-range-page-grade__heading" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(4) img" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) img" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) img" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(4) h2.ty-range-page-grade__byline" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) h2.ty-range-page-grade__byline" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) h2.ty-range-page-grade__byline" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(4) p.ty-range-page-grade__description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) p.ty-range-page-grade__description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) p.ty-range-page-grade__description" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(1) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(2) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(1) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(2) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(1) > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(2) > h3" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__value" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__value" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(1) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(2) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(1) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(2) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(1) .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(2) .ty-disclaimer-ref" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(1) .ty-range-page-key-spec__variant-list" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-key-spec:nth-child(2) .ty-range-page-key-spec__variant-list" should be visible

	When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__ksps .ty-range-page-section__header"

	Then The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__ksps .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-grade__ksps .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-grade__ksps .ty-range-page-section__header" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__ksps .ty-range-page-section__body" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-grade__ksps .ty-range-page-section__body" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-grade__ksps .ty-range-page-section__body" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__ksps .ty-range-page-section__footer" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-grade__ksps .ty-range-page-section__footer" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-grade__ksps .ty-range-page-section__footer" should be visible

    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__option-packs .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-grade__option-packs .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-grade__option-packs .ty-range-page-section__header" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item" should be visible

	When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__ksps .ty-range-page-section__footer"
	When I click on the element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__ksps .ty-range-page-section__footer"

	Then The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__ksps .ty-range-page-section__footer .ty-svg-icon__accordion-collapse" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-page-grade__ksps .ty-range-page-section__footer .ty-svg-icon__accordion-collapse" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-page-grade__ksps .ty-range-page-section__footer .ty-svg-icon__accordion-collapse" should be visible

    When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-page-grade__option-packs .ty-range-page-option-packs__item"

	Then The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-driveaway-pricing > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-driveaway-pricing > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-driveaway-pricing > h3" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-driveaway-pricing .ty-driveaway-pricing__value" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-driveaway-pricing .ty-driveaway-pricing__value" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-driveaway-pricing .ty-driveaway-pricing__value" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-driveaway-pricing .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-driveaway-pricing .ty-disclaimer-ref" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-driveaway-pricing .ty-disclaimer-ref" should be visible  
	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-driveaway-pricing .ty-driveaway-pricing__base-variant-description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-driveaway-pricing .ty-driveaway-pricing__base-variant-description" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-driveaway-pricing .ty-driveaway-pricing__base-variant-description" should be visible
    And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-range-driveaway__price:nth-child(1) > div.ty-range-driveaway__location-indicator" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-range-driveaway__price:nth-child(1) > div.ty-range-driveaway__location-indicator" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-range-driveaway__price:nth-child(1) > div.ty-range-driveaway__location-indicator" should be visible

	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-button" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-button" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-button" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(4) .ty-link-with-icon" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(5) .ty-link-with-icon" should be visible
	And The element with "CssSelector" matching ".owl-item:nth-child(6) .ty-link-with-icon" should be visible

    When I Scroll to the element with "CssSelector" matching ".owl-item:nth-child(4) .ty-link-with-icon"

Scenario: Toyota_RangePage_Pg1_DisclaimersSection
    When I Scroll to the element with "CssSelector" matching ".expanding-field-v2-background"    
    Then The element with "CssSelector" matching ".expanding-field-v2 label.open" should be visible
    And The element with "CssSelector" matching ".expanding-field-v2 label" should contain "Disclaimers" text
    And The element with "CssSelector" matching ".expanding-field-v2 label.close-button" should contain "Close" text
    And The element with "CssSelector" matching ".expanding-field-v2 .ty-disclaimer.ng-scope:nth-child(1) .ty-disclaimer__title" should be visible
    And The element with "CssSelector" matching ".expanding-field-v2 .ty-disclaimer.ng-scope:nth-child(1) .ty-disclaimer__description" should be visible
    When I click on the element with "CssSelector" matching ".expanding-field-v2 label"
    When I wait for "1" seconds
    Then The element with "CssSelector" matching ".expanding-field-v2 .ty-disclaimer.ng-scope:nth-child(1) .ty-disclaimer__title" should NOT be visible
    And The element with "CssSelector" matching ".expanding-field-v2 .ty-disclaimer.ng-scope:nth-child(1) .ty-disclaimer__description" should NOT be visible

 Scenario: Toyota_RangePage_Pg1_CHR   
    Given I am on the main url with these extra parameters "/main/c-hr/range"
    Then The element with "CssSelector" matching ".owl-prev.disabled" should exist on the page
    And The element with "CssSelector" matching ".owl-next.disabled" should exist on the page
    