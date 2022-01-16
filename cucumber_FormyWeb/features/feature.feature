Feature: Testing on Website: https://formy-project.herokuapp.com/
    As a web surfer,
    I want to find some information,
    So I can find that and get task done

Scenario: Type something
   Given I am on the Formy page
   When I type my Identification at text box
   Then I can see my information

Scenario: Swtich Window
   Given I am on the Swtich Window page
   When I click Open new tab button
   Then Verify new tab

Scenario: DatePicker
   Given I am on the DatePicker page
   When I click datefield on the page
   Then The page I typeed whill display