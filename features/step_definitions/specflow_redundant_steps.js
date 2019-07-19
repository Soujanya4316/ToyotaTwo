const {Given, When, Then} = require('cucumber');

Then('I Wait For a long while', function () {
    console.log('## I Wait For a long while: Ignoring the step in TestCafe. This is to handle the redundant steps in Specflow');
    console.log('Delete ^ STEP');
    return true;
});

Then('I Wait For a short while', function () {
    console.log('## I Wait For a short while: Ignoring the step in TestCafe. This is to handle the redundant steps in Specflow');
    console.log('Delete ^ STEP');
    return true;
});

When('I maximise the window', function () {
    console.log('## I maximise the window: Ignoring the step in TestCafe. This is to handle the redundant steps in Specflow');
    console.log('Delete ^ STEP');
    return true;
});

Then('I wait for element with {string} matching {string} to be visible', function (selector, value) {
    console.log('## I wait for element with {selector} matching {value} to be visible: Ignoring the step in TestCafe. This is to handle the redundant steps in Specflow');
    console.log('Delete ^ STEP');
    return true;
});

Then('I take a screenshot called {string}', function (fileName) {
    console.log(`## I take a screenshot called "${fileName}"`);
    console.log('Delete ^ STEP');
    return true;
});

Then('The elements with {string} matching {string} should have {string} {string} matches', function (selector, value, compare, count) {
    console.log(`## The elements with "${selector}" matching "${value}" should have "${compare}" "${count}" matches`);
    console.log('Delete ^ STEP');
    return true;
});