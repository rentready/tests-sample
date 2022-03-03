const path = require("path");

const SelectorXPath = require("testcafe-cucumber-steps/utils/selector-xpath.js");
const { Then } = require('@cucumber/cucumber')
const { Selector } = require('testcafe');
const { readDirectories } = require('js-automation-tools');

const spacesToIndent = 4;

const isCalledExternally = __dirname.includes('node_modules');

const pageObjectsFolderPathes = 'PO_FOLDER_PATH' in process.env ?
  process.env.PO_FOLDER_PATH.replace(/\s+/g, '').split(',') :
  ['page-model'];

const fullPageObjectsFolderPathes = isCalledExternally ?
  pageObjectsFolderPathes.map((pageObjectsFolderPath) => {
    return path.join(__dirname, '..', '..', pageObjectsFolderPath)
  }) :
  pageObjectsFolderPathes.map((pageObjectsFolderPath) => {
    return path.join(__dirname, pageObjectsFolderPath)
  });

// Require all Page Object files in directory
let pageObjects = {};

async function requirePageObjects () {
  const allPageObjectFiles = await readDirectories(fullPageObjectsFolderPathes);
  const allRequiredPageObjects = allPageObjectFiles
    .filter(value => value.includes('.js'))
    .map(file => {
      const fileName = path.basename(file, '.js');

      pageObjects[fileName] = require(file);

      return file;
    });

  console.log(
    '\nPage Objects from PO_FOLDER_PATH:',
    `\n${JSON.stringify(pageObjects, null, spacesToIndent)}\n\n`
  );

  return allRequiredPageObjects;
}

requirePageObjects();

function isXPath(locator) {
  const firstCharOfLocator = 0;
  const fourthCharOfLocator = 3;

  return locator.slice(firstCharOfLocator, fourthCharOfLocator).includes('//');
}

function getElement(page, elem) {
  const locator = pageObjects[page][elem];
  let element;

  try {
    if (isXPath(locator)) {
      element = SelectorXPath(locator);
    } else {
      element = locator;
    }
  } catch (error) {
    throw new ReferenceError(`SELECTOR_NOT_DEFINED "${page}"."${elem}" ${error}`);
  }

  return element;
}

Then('{word} from {word} value is {string}', async function (t, [element, page, text]) {
  const elem = getElement(page, element);

  await t.expect(Selector(elem).value).eql(text);
});
