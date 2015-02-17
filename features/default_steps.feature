Feature: Initial experience
  As a user I want a helpful and simple initial
  experience with the app. I should be able to enter
  a string of text, and have it shown to me in a label.

  @reinstall @ios @android
  Scenario: Entering text into a label
    Given I should see "Input"
      And I enter "Hello from Calabash!" into input field number 1
      And I press the "Next" button
    Then I should see "Result"
     And I should see "Hello from Calabash!"

  @ios
  Scenario: Entering text into a label for iOS
    Given I should see "Input"
      And I enter "Hello to Calabash from iOS!" into input field number 1
      And I press the "Next" button
    Then I should see "Result"
     And I should see "Hello to Calabash from iOS!"

  @android
  Scenario: Entering text into a label for Android
    Given I should see "Input"
      And I enter "Hello to Calabash from Android!" into input field number 1
      And I press the "Next" button
    Then I should see "Result"
     And I should see "Hello to Calabash from Android!"