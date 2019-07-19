const {Selector} = require('testcafe');
const Config = require('../../support/config.js');

module.exports = {

    url: `${process.env.TESTCAFE_URL}/main/c-hr/prices`,
    kobaYellow: '2P969003ALB205A3',
    kobaYellowWithBlackRoof: '2P969003BLB202PQ',
    

    roofColourElements: {
        roofColourtitle: function() {
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(2) div:nth-child(2) > h3').with({ boundTestRun: testController })
        },
        roofColourDesc: function() {
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(2) div:nth-child(2) .ty-pricing-swatch-selector__option-description-outer > p').with({ boundTestRun: testController })
        },
        roofColourSection: function() {
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(2) div:nth-child(2) .ty-pricing-swatch-selector__items').with({ boundTestRun: testController })
        },
        roofColour1: function() {
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(2) div:nth-child(2) .ty-pricing-swatch-selector-item.has-dark-tick:nth-child(1) > label').with({ boundTestRun: testController })
        },
        roofColour2: function() {
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(2) div:nth-child(2) .ty-pricing-swatch-selector-item.has-light-tick:nth-child(2) > label').with({ boundTestRun: testController })
        }
    },

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
        }
    },

    lhsElements: {
        lhsImage: function() {
            return Selector('.ty-pricing-info img').with({ boundTestRun: testController })
        },
        lhsPrice: async function() {

            //const digit1 = Selector('.ty-pricing-info__body:nth-child(3) .ty-number-animator-char--digit:nth-child(2)').innerText.with({ boundTestRun: testController })
            const digit1 = await Selector('.ty-pricing-info__body:nth-child(3) .ty-number-animator-char--digit:nth-child(2)').with({ boundTestRun: testController })
            const digit2 = digit1.innerText;
            console.log(`Digit1: ${digit2}`);

            //return Selector('.ty-pricing-info img').with({ boundTestRun: testController })
        },
        
    },

    

}