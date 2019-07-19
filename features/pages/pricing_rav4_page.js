const {Selector} = require('testcafe');
const ClientFunction = require('testcafe').ClientFunction;
const Config = require('../../support/config.js');

module.exports = {

    url: `${process.env.TESTCAFE_URL}/main/rav4/prices`,

    gradeElements: {
        gradeSection: function() {
            return Selector('.ty-pricing-grade-selector').with({ boundTestRun: testController })
        },
        gradeHeading: function() {
            return Selector('.ty-pricing-grade-selector > h3').with({ boundTestRun: testController })
        },
        grade1: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(1) label').with({ boundTestRun: testController })
        },
        grade2: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(2) label').with({ boundTestRun: testController })
        },
        grade3: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(3) label').with({ boundTestRun: testController })
        },
        grade1Label: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(1) .ty-pricing-grade-selector-item-driveaway__label').with({ boundTestRun: testController })
        },
        grade1Price: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(1) .ty-pricing-grade-selector-item-driveaway__value').with({ boundTestRun: testController })
        },
        grade2Label: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(2) .ty-pricing-grade-selector-item-driveaway__label').with({ boundTestRun: testController })
        },
        grade2Price: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(2) .ty-pricing-grade-selector-item-driveaway__value').with({ boundTestRun: testController })
        },
        grade3Label: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(3) .ty-pricing-grade-selector-item-driveaway__label').with({ boundTestRun: testController })
        },
        grade3Price: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(3) .ty-pricing-grade-selector-item-driveaway__value').with({ boundTestRun: testController })
        }
    },

    colourElements: {
        colourtitle: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) > h3').with({ boundTestRun: testController })
            //return Selector('.ty-pricing-swatch-selector div').nth(1).find('h3').with({ boundTestRun: testController })
        },
        colourDesc: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) .ty-pricing-swatch-selector__option-description-outer').with({ boundTestRun: testController })
        },
        colourSection: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) .ty-pricing-swatch-selector__items').with({ boundTestRun: testController })
        },
        colourWhite: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) .ty-pricing-swatch-selector-item.has-dark-tick:nth-child(1) > label').with({ boundTestRun: testController })
        },
        colourCrystalPearl: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) .ty-pricing-swatch-selector-item.has-dark-tick:nth-child(2) > label').with({ boundTestRun: testController })
        },
        colourSilverSky: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) .ty-pricing-swatch-selector-item.has-dark-tick:nth-child(3) > label').with({ boundTestRun: testController })
        },
        colourGraphite: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) .ty-pricing-swatch-selector-item.has-light-tick:nth-child(4) > label').with({ boundTestRun: testController })
        }


        
    },

    trimElements: {
        trimTitle: function() {
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(3) > h3').with({ boundTestRun: testController })
        },
        trimDesc: function() {
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(3) .ty-pricing-select__option-description').with({ boundTestRun: testController })
        },
        trim1: function() {
            return Selector('#swatch-LA40 + label').with({ boundTestRun: testController })
        },
        trim2: function() {
            return Selector('#swatch-LA20 + label').with({ boundTestRun: testController })
        },
        trim3: function() {
            return Selector('#swatch-LA30 + label').with({ boundTestRun: testController })
        }        
    },

    extrasElements: {
        extras1Section: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(1) > label').with({ boundTestRun: testController })
        },
        extras1Label: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(1) .ty-pricing-option-pack-selector-item__detail').with({ boundTestRun: testController })
        },
        extras1RadioUI: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(1) .ty-pricing-option-pack-selector-item__radio-affordance').with({ boundTestRun: testController })
        },
        extras1RadioBtn: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(1) > input').with({ boundTestRun: testController })
        },
        extras2Section: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(2) > label').with({ boundTestRun: testController })
        },
        extras2Label: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(2) .ty-pricing-option-pack-selector-item__detail').with({ boundTestRun: testController })
        },
        extras2RadioUI: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(2) .ty-pricing-option-pack-selector-item__radio-affordance').with({ boundTestRun: testController })
        },
        extras2RadioBtn: function() {
            return Selector('.ty-pricing-option-pack-selector-item:nth-child(2) > input').with({ boundTestRun: testController })
        } 
    },


    

}