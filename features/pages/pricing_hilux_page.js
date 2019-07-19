const {Selector} = require('testcafe');
const ClientFunction = require('testcafe').ClientFunction;
const Config = require('../../support/config.js');

module.exports = {

    url: `${process.env.TESTCAFE_URL}/main/hilux/prices`,

    getPageDetails: {
        PageURL: function () {
            return ClientFunction(() => window.location.href).with({ boundTestRun: testController });
        }
    },

    pageHeaderElements: {
        main: function() {
            return Selector('.ty-secondary-nav').with({ boundTestRun: testController })
        },
        title: function() {
            return Selector('.ty-secondary-nav__title').with({ boundTestRun: testController })
        },
        range: function() {
            return Selector('.ty-secondary-nav__item:nth-child(1)').with({ boundTestRun: testController })
        },
        customise: function() {
            return Selector('.ty-secondary-nav__item:nth-child(2)').with({ boundTestRun: testController })
        },
        prices: function() {
            return Selector('.ty-secondary-nav__item:nth-child(3)').with({ boundTestRun: testController })
        },
        spec: function() {
            return Selector('.ty-secondary-nav__item:nth-child(4)').with({ boundTestRun: testController })
        },
        locationIcon: function() {
            return Selector('.ty-secondary-nav__location--desktop .ty-secondary-nav__location-icon > svg').with({ boundTestRun: testController })
        },
        locationBeforeSelection: function() {
            return Selector('.ty-secondary-nav__location--desktop').with({ boundTestRun: testController })
        },
        locationAfterSelection: function() {
            return Selector('nav').with({ boundTestRun: testController })
        },
        cta: function() {
            return Selector('.ty-secondary-nav__cta.button').with({ boundTestRun: testController })
        }
    },

    pageBodyElements: {
        title: function() {
            return Selector('h1').with({ boundTestRun: testController })
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
        grade3: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(3) label').with({ boundTestRun: testController })
        },
        grade4: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(4) label').with({ boundTestRun: testController })
        },
        grade5: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(5) label').with({ boundTestRun: testController })
        },
        grade6: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(6) label').with({ boundTestRun: testController })
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
        },
        grade4Label: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(4) .ty-pricing-grade-selector-item-driveaway__label').with({ boundTestRun: testController })
        },
        grade4Price: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(4) .ty-pricing-grade-selector-item-driveaway__value').with({ boundTestRun: testController })
        },
        grade5Label: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(5) .ty-pricing-grade-selector-item-driveaway__label').with({ boundTestRun: testController })
        },
        grade5Price: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(5) .ty-pricing-grade-selector-item-driveaway__value').with({ boundTestRun: testController })
        },
        grade6Label: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(6) .ty-pricing-grade-selector-item-driveaway__label').with({ boundTestRun: testController })
        },
        grade6Price: function() {
            return Selector('.ty-pricing-grade-selector__item.col-lg-4:nth-child(6) .ty-pricing-grade-selector-item-driveaway__value').with({ boundTestRun: testController })
        },
        
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
        colour1: function() {
            return Selector('.ty-pricing-swatch-selector div:nth-child(1) .ty-pricing-swatch-selector-item.has-dark-tick:nth-child(1) > label').with({ boundTestRun: testController })
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
            return Selector('.ty-pricing-swatch-selector.ng-scope:nth-child(3) .ty-swatch__select-area').with({ boundTestRun: testController })
        }
    },

    cabChassisElements: {
        cabChassisTitle: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(1) > h3').with({ boundTestRun: testController })
        },
        cabChassis1: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(1) .ty-pricing-variant-selector__items .ty-pricing-select__option:nth-child(2)').with({ boundTestRun: testController })
        },
        cabChassis2: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(1) .ty-pricing-variant-selector__items .ty-pricing-select__option:nth-child(4)').with({ boundTestRun: testController })
        },
        cabChassis3: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(1) .ty-pricing-variant-selector__items .ty-pricing-select__option:nth-child(6)').with({ boundTestRun: testController })
        },
        cabChassis4: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(1) .ty-pricing-variant-selector__items .ty-pricing-select__option:nth-child(8)').with({ boundTestRun: testController })
        },
        cabChassis5: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(1) .ty-pricing-variant-selector__items .ty-pricing-select__option:nth-child(10)').with({ boundTestRun: testController })
        }
    },

    trayElements: {
        traySection: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(2)').with({ boundTestRun: testController })
        },
        trayTitle: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(2) > h3').with({ boundTestRun: testController })
        },
        tray1: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(2) label').with({ boundTestRun: testController })
        },
        trayDesc: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(2) .ty-pricing-select__disclaimer').with({ boundTestRun: testController })
        }
    },

    drivetrainElements: {
        driveTrainTitle: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(3) > h3').with({ boundTestRun: testController })
        },
        driveTrain1: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(3) .ty-pricing-select__option:nth-child(2)').with({ boundTestRun: testController })
        },
        driveTrain2: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(3) .ty-pricing-select__option:nth-child(4)').with({ boundTestRun: testController })
        },
        driveTrain3: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(3) .ty-pricing-select__option:nth-child(6)').with({ boundTestRun: testController })
        }
    },

    engineTypeElements: {
        engineTypeTitle: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(4) > h3').with({ boundTestRun: testController })
        },
        engineType1: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(4) .ty-pricing-select__option:nth-child(2)').with({ boundTestRun: testController })
        },
        engineType2: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(4) .ty-pricing-select__option:nth-child(4)').with({ boundTestRun: testController })
        },
        engineType3: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(4) .ty-pricing-select__option:nth-child(6)').with({ boundTestRun: testController })
        }
    },

    transmissionElements: {
        transmissionTitle: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(5) > h3').with({ boundTestRun: testController })
        },
        transmission1: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(5) .ty-pricing-select__option:nth-child(2)').with({ boundTestRun: testController })
        },
        transmission2: function() {
            return Selector('.ty-pricing-variant-selector.ng-isolate-scope:nth-child(4) .ng-scope:nth-child(5) .ty-pricing-select__option:nth-child(2)').with({ boundTestRun: testController })
        }
    },

    extrasElements: {
        extrasTitle: function() {
            return Selector('.ty-pricing-option-pack-selector.ng-scope:nth-child(5) > h3').with({ boundTestRun: testController })
        },
        extras1: function() {
            return Selector('.ty-pricing-option-pack-selector.ng-scope:nth-child(5) .ty-pricing-option-pack-selector-item:nth-child(1)').with({ boundTestRun: testController })
        },
        extras2: function() {
            return Selector('.ty-pricing-option-pack-selector.ng-scope:nth-child(5) .ty-pricing-option-pack-selector-item:nth-child(2)').with({ boundTestRun: testController })
        }
    },

    accessoriesElements: {
        accessoriesTitle: function() {
            return Selector('.ty-pricing-accessories-info:nth-child(6) > h3').with({ boundTestRun: testController })
        },
        accessoriesText: function() {
            return Selector('.ty-pricing-accessories-info:nth-child(6) .ty-pricing-accessories-content__subtext').with({ boundTestRun: testController })
        },
        accessoriesCTA: function() {
            return Selector('.ty-pricing-accessories-info:nth-child(6) .ty-pricing-accessories-content__detail-cta').with({ boundTestRun: testController })
        }
    },

    lhsElements: {
        lhsSection: function() {
            return Selector('.ty-pricing-info').with({ boundTestRun: testController })
        },
        lhsTitle: function() {
            return Selector('.ty-pricing-info__model.ng-binding:nth-child(1)').with({ boundTestRun: testController })
        },
        lhsImage: function() {
            return Selector('.ty-pricing-info img').with({ boundTestRun: testController })
        },
        lhsSO: function() {
            return Selector('.ty-pricing-info .ty-pricing-special-offers').with({ boundTestRun: testController })
        },
        lhsBeforePrice: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-driveaway__page:nth-child(3) .ty-driveaway-pricing-error').with({ boundTestRun: testController })
        },
        lhsLocationIcon: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-driveaway__page:nth-child(3) .ty-driveaway-pricing-error svg').with({ boundTestRun: testController })
        },
        lhsEnterLocationText: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-driveaway__page:nth-child(3) .ty-driveaway-pricing-error .ty-driveaway-pricing-error__label').withText('Enter your location').with({ boundTestRun: testController })
        },
        lhsAfterPriceSection: function() {
            return Selector('.ty-pricing-info .ty-pricing-driveaway-price').with({ boundTestRun: testController })
        },
        lhsAfterPriceDisclaimer: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) sup:nth-child(2)').with({ boundTestRun: testController })
        },
        lhsAfterPriceLocation: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) div.ty-pricing-info__location-indicator').with({ boundTestRun: testController })
        },
        lhsAfterPriceTabsCash: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-tab.ty-pricing-financeoptions__tabs-cash').with({ boundTestRun: testController })
        },
        lhsAfterPriceTabsFinance: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-tab.ty-pricing-financeoptions__tabs-finance').with({ boundTestRun: testController })
        },
        lhsAfterPriceTabsCashSelected: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-tab.ty-pricing-financeoptions__tabs-cash .ty-tab__radio.is-checked').with({ boundTestRun: testController })
        },
        lhsAfterPriceTabsFinanceSelected: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-tab.ty-pricing-financeoptions__tabs-finance .ty-tab__radio.is-checked').with({ boundTestRun: testController })
        },
        lhsAfterPriceTabsFinanceCTA: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .sticky-footer-displayed:nth-child(1) > a').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionPerWeek: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__col:nth-child(1)').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionIntRate: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__col:nth-child(2)').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionLoanTerm: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__col:nth-child(3)').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionGFV: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__gfv').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionGFVTooltipIcon: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__gfv .ty-tooltip-icon').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionGFVTooltipContent: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__gfv .ty-tooltip-callout__content').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionCTA1: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .sticky-footer-displayed:nth-child(1) .ty-cta').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionCTA2: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__results .ty-pricing-financeoptions__multiple-cta .ty-pricing-financeoptions__cta:nth-child(2) .ty-cta').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsSectionLocation: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-location-indicator').with({ boundTestRun: testController })
        },

        


        lhsAfterFinTabsPerWeek: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__col:nth-child(1)').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsIntRate: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__col:nth-child(2)').with({ boundTestRun: testController })
        },
        lhsAfterFinTabsLoanTerm: function() {
            return Selector('.ty-pricing-info__body:nth-child(3) .ty-pricing-financeoptions__col:nth-child(3)').with({ boundTestRun: testController })
        }
    },

    FinanceCalc: {
        FinanceCalcModal: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel').with({ boundTestRun: testController })
        },       
        FinanceCalcModalTitleBar: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-modal-panel__head').with({ boundTestRun: testController })
        },       
        FinanceCalcModalTitle: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-modal-panel-head__title').with({ boundTestRun: testController })
        },       
        FinanceCalcModalCloseBtn: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-modal-panel-head__close').with({ boundTestRun: testController })
        },       
        FinanceCalcModalVehicleHeading: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-finance-calculator__heading').with({ boundTestRun: testController })
        },       
        FinanceCalcModalSectionTitle: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-finance-calculator__vehicle-usage').with({ boundTestRun: testController })
        },   
        FinanceCalcModalBoxIntRate: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-finance-calculator__option:nth-child(2) > .ty-finance-calculator__label').with({ boundTestRun: testController })
        },    
        FinanceCalcModalBoxDeposit: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-finance-calculator__option:nth-child(4) > .ty-finance-calculator__label').with({ boundTestRun: testController })
        },    
        FinanceCalcModalBoxLoanTerm: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-finance-calculator__option:nth-child(6) > .ty-finance-calculator__label').with({ boundTestRun: testController })
        },    
        FinanceCalcModalBoxAvgDistance: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open > .ty-modal__panel .ty-finance-calculator__option:nth-child(8) > .ty-finance-calculator__label').with({ boundTestRun: testController })
        },    
        FinanceCalcModalDialArea: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open .ty-finance-calculator__wrapper:nth-child(1) .ty-finance-calculator__row:nth-child(4) .ty-rslider').with({ boundTestRun: testController })
        },    
        FinanceCalcModalDial: function() {
            return Selector('.rs-handle').with({ boundTestRun: testController })
        },      
        FinanceCalcModalFooter: function() {
            return Selector('.ty-finance-calculator__footer').with({ boundTestRun: testController })
        },    
        FinanceCalcModalFooterPrice: function() {
            return Selector('.ty-finance-calculator__repayments').with({ boundTestRun: testController })
        },    
        FinanceCalcModalFooterDoneBtn: function() {
            return Selector('.ty-finance-calculator__footer-col--right:nth-child(3)').with({ boundTestRun: testController })
        },    
        FinanceCalcModalDisclaimers: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open .expanding-field-v2').with({ boundTestRun: testController })
        },    
        FinanceCalcModalDialEdit: function() {
            return Selector('.edit').with({ boundTestRun: testController })
        },    
        FinanceCalcModalDialHeading: function() {
            return Selector('.is-finance-option:nth-child(10) .ty-modal.is-open .ty-finance-calculator__wrapper:nth-child(1) .ty-finance-calculator__row:nth-child(4) .loanRate').with({ boundTestRun: testController })
        },    
        FinanceCalcModalGFV: function() {
            return Selector('.ty-finance-calculator__gfv').with({ boundTestRun: testController })
        },  
        FinanceCalcModalGFVValue: function() {
            return Selector('.ty-finance-calculator__gfv-figure').with({ boundTestRun: testController })
        }
    },
    
    pageFooterElements: {
        pageFooterSection: function() {
            return Selector('.ty-pricing-sticky-footer').with({ boundTestRun: testController })
        },
        pageFooterOption1: function() {
            return Selector('.ty-pricing-sticky-footer__configuration-item.ng-scope:nth-child(1)').with({ boundTestRun: testController })
        },
        pageFooterOption2: function() {
            return Selector('.ty-pricing-sticky-footer__configuration-item.ng-scope:nth-child(3)').with({ boundTestRun: testController })
        },
        pageFooterOption3: function() {
            return Selector('.ty-pricing-sticky-footer__configuration-item.ng-scope:nth-child(5)').with({ boundTestRun: testController })
        },
        pageFooterOption4: function() {
            return Selector('.ty-pricing-sticky-footer__configuration-item.ng-scope:nth-child(7)').with({ boundTestRun: testController })
        },
        pageFooterOption5: function() {
            return Selector('.ty-pricing-sticky-footer__configuration-item.ng-scope:nth-child(9)').with({ boundTestRun: testController })
        },
        pageFooterCTA1: function() {
            return Selector('.ty-pricing-sticky-footer .ty-button.-secondary').with({ boundTestRun: testController })
        },
        pageFooterCTA2: function() {
            return Selector('.ty-pricing-sticky-footer .ty-button.-primary').with({ boundTestRun: testController })
        },
        pageFooterCTA1TextDesktop: function() {
            return Selector('.ty-pricing-sticky-footer .ty-button.-secondary > .ty-pricing-cta-text__default').with({ boundTestRun: testController })
        },
        pageFooterCTA2TextDesktop: function() {
            return Selector('.ty-pricing-sticky-footer .ty-button.-primary > .ty-pricing-cta-text__default').with({ boundTestRun: testController })
        },
    },

    locationOverlayElements: {
        locationOverlaySection: function() {
            return Selector('.ng-isolate-scope:nth-child(13) .ty-modal-panel').with({ boundTestRun: testController })
        },
        locationOverlayTitle: function() {
            return Selector('.ng-isolate-scope:nth-child(13) .ty-modal-panel .ty-modal-panel-head__title').with({ boundTestRun: testController })
        },
        locationOverlayClose: function() {
            return Selector('.ng-isolate-scope:nth-child(13) .ty-modal-panel .ty-modal-panel-head__close').with({ boundTestRun: testController })
        },
        locationOverlayIcon: function() {
            return Selector('.ty-modal-panel .location-info__marker').with({ boundTestRun: testController })
        },
        locationOverlayTitleText: function() {
            return Selector('.ty-modal-panel h2').with({ boundTestRun: testController })
        },
        locationOverlaySearchField: function() {
            return Selector('.ty-modal-panel tags-input').with({ boundTestRun: testController })
        },
        locationOverlaySearchFieldIcon: function() {
            return Selector('.searchicon').with({ boundTestRun: testController })
        },
        locationOverlayGPSIcon: function() {
            return Selector('.location-info__geo-icon').with({ boundTestRun: testController })
        },
        locationOverlayGPSlocationText: function() {
            return Selector('.location-info__geo-link').with({ boundTestRun: testController })
        },
        locationOverlayLocationListSelected: function() {
            return Selector('.suggestion-item.selected').with({ boundTestRun: testController })
        },
        locationOverlaySearchFieldCloseBtn: function() {
            return Selector('.remove-button').with({ boundTestRun: testController })
        },
        locationOverlayDealership1: function() {
            return Selector('.ty-modal-panel .location-info__dealership-select.ng-scope:nth-child(2)').with({ boundTestRun: testController })
        },
        
        
    },
}