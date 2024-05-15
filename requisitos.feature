Feature: Inclusion of the "Contact" tab on the Innocv website

  Scenario: Accessing the "Contact" tab
    Given I am on the Innocv homepage
    When I click on the "Contact" link
    Then I should be redirected to the Innocv contact page

  Scenario: Displaying the contact form
    Given I am on the Innocv contact page
    When the page loads
    Then I should see a contact form on the page , last news and locations

  Scenario: Verifying the visibility of contact information
    Given I am on the Innocv contact page
    When the page loads
    Then I should see the contact information (address, phone number, email, maps , locations and last news.) clearly visible on the page

  Scenario: Validating submission of the contact form
    Given I am on the Innocv contact page
    When I fill out the form with valid information and submit it
    Then I should receive a confirmation that the message has been sent successfully
    And I should receive a copy of the message in my registered email

  Scenario: Handling errors when submitting the contact form with incorrect information
    Given I am on the Innocv contact page
    When I fill out the form with incorrect information and submit it
    Then I should receive an error message indicating the fields that need correction
    And the form should not be submitted until the information is valid

  Scenario: Navigating back to the homepage from the contact page
    Given I am on the Innocv contact page
    When I click on the "Home" link
    Then I should be redirected back to the Innocv homepage

  Scenario: Clearing the contact form
    Given I am on the Innocv contact page
    When I clear the information in the contact form
    Then all fields in the form should be empty