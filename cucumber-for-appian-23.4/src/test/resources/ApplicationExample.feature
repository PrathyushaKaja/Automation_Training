@Application
Feature: Sample feature file that interacts with an Appian application

  Configuring your site with the sample application:
  1. Import the applicable version of Automated Testing - XX.X.zip application, provided in the Shared Components page, into your Appian environment
  2. Log into Appian Designer view on your Appian environment and import the downloaded application zip
  3. After import is complete, click on the Automated Testing application
  4. Find and click on the AUT DS object to open the Appian Data Store Designer
  5. Verify the entity mappings under Schema Management and then Save & Publish the data store

  Prerequisites for running the test on the configured site above:
  1. Run the appropriate setupCustomPropertiesFor... script
  2. Replace BROWSER with either FIREFOX or CHROME
  3. Replace APPIAN_URL with your Appian site URL, beginning with https:// and including /suite at the end (e.g. https://forum.appian.com/suite)
  4. Replace APPIAN_VERSION with a supported Appian Version in xx.x format
  5. Replace APPIAN_LOCALE with either "en_US" or "en_GB"
  5. Replace APPIAN_USERNAME with a valid username for Appian URL above
  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username=password (e.g. test.user=password)

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://yexledemo.appiancloud.com/suite/sites/automation-cases"
    And I set appian version to "23.3"
    And I set appian locale to "en_US"
    Then I login with username "YexleQA"

  Scenario: Fill out Automated Testing Data Input form
#    Given I click on menu "Actions"
#    Given I click on action "Automated Testing Input"
    Given I click on button "NEW CASE"
    Given I populate field "Text" with "prathyusha"
    Given I populate picker field "Date" with partially matching suggestions for "7/16/2000"
    Given I populate field "Paragraph" with "Automation testing"
    Given I click on radio option "Option 2"
    Given I populate dropdown "Dropdown" search box with "Option 1"
    Given I click on checkbox option "Option 1"
    And I click on grid "Editable Grid" add row link
    Given I populate grid "Editable Grid" column "[2]" row "[1]" with "Option 3"
    Given I populate grid "Editable Grid" column "[3]" row "[1]" with "Example"
    And I click on button "UPLOAD"
#    And I populate picker field "<string>" with partially matching suggestions for
#    And I click on button "Open"
    And I click on button "Submit"
    And I wait for "5" seconds
    Given I logout
    Given I tear down




