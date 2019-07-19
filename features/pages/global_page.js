const {Selector} = require('testcafe');

module.exports = {

    globalHeaderElements: {
        main: function() {
            return Selector('nav').with({ boundTestRun: testController })
        },
        logo: function() {
            return Selector('.navbar-brand > img').with({ boundTestRun: testController })
        },
        vehicles: function() {
            return Selector('.navbar-nav .visible-md:nth-child(1)').with({ boundTestRun: testController })
        },
        currentOffers: function() {
            return Selector('.navbar-nav li.hidden-xs:nth-child(2)').with({ boundTestRun: testController })
        },
        usedCars: function() {
            return Selector('.navbar-nav li.hidden-xs:nth-child(3)').with({ boundTestRun: testController })
        },
        findADealer: function() {
            return Selector('.navbar-nav li.hidden-xs:nth-child(4)').with({ boundTestRun: testController })
        },
        owners: function() {
            return Selector('.navbar-nav li.hidden-xs:nth-child(5)').with({ boundTestRun: testController })
        }  
    },

    pageFooter2Elements: {
        pageFooter2Section: function() {
            return Selector('.ty-layout__col.ty-layout__col--12').with({ boundTestRun: testController })
        },
        pageFooter2CTA1Img: function() {
            return Selector('.ty-typography__content span img').with({ boundTestRun: testController })
        },
        pageFooter2CTA1Desc: function() {
            return Selector('.ty-typography__content span p').with({ boundTestRun: testController })
        },
        pageFooter2CTA2Img: function() {
            return Selector('.ty-typography__content div:nth-of-type(2) img').with({ boundTestRun: testController })
        },
        pageFooter2CTA2Desc: function() {
            return Selector('.ty-typography__content div:nth-of-type(2) p').with({ boundTestRun: testController })
        }
    },
    
    pageFooterDisclaimers: {
        pageFooterDisclaimersSection: function() {
            return Selector('.expanding-field-v2-background .expanding-field-v2').with({ boundTestRun: testController })
        },
        pageFooterDisclaimersOpen: function() {
            return Selector('.expanding-field-v2-background .expanding-field-v2 .open').with({ boundTestRun: testController })
        },
        pageFooterDisclaimersCloseBtn: function() {
            return Selector('.expanding-field-v2-background .expanding-field-v2 .close-button').with({ boundTestRun: testController })
        },
        pageFooterDisclaimersItem1Title: function() {
            return Selector('.expanding-field-v2 .ty-disclaimer.ng-scope:nth-child(1) .ty-disclaimer__title').with({ boundTestRun: testController })
        },
        pageFooterDisclaimersItem1Desc: function() {
            return Selector('.expanding-field-v2 .ty-disclaimer.ng-scope:nth-child(1) .ty-disclaimer__description').with({ boundTestRun: testController })
        } 
    },

    globalFooter: {
        globalFooterSectionMain: function() {
            return Selector('#ty-footer-main').with({ boundTestRun: testController })
        },
        globalFooterSectionVehicles: function() {
            return Selector('#ty-footer-vehicles').with({ boundTestRun: testController })
        },
        globalFooterSectionTools: function() {
            return Selector('#ty-footer-about').with({ boundTestRun: testController })
        },
        globalFooterSectionOwnership: function() {
            return Selector('#ty-footer-finance').with({ boundTestRun: testController })
        },
        globalFooterSectionContact: function() {
            return Selector('#ty-footer-contact').with({ boundTestRun: testController })
        },
        globalFooterSectionFinePrint: function() {
            return Selector('.ty-footer__fine-print').with({ boundTestRun: testController })
        }        
    },
    

    
    // sample elements without functions.
    // globalHeaderElements: {
    //     main: Selector('nav'),
    //     Logo: Selector('.navbar-brand > img'),
    //     Vehicles: Selector('.navbar-nav .visible-md:nth-child(1)'),
    //     CurrentOffers: Selector('.navbar-nav li.hidden-xs:nth-child(2)'),
    //     UsedCars: Selector('.navbar-nav li.hidden-xs:nth-child(2)'),
    //     FindADealer: Selector('.navbar-nav li.hidden-xs:nth-child(2)'),
    //     Owners: Selector('.navbar-nav li.hidden-xs:nth-child(5)')
    // }
}