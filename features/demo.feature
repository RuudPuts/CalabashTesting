Feature: Initial experience
  As a user I want a helpful and simple initial
  experience with the app. I should be able to enter
  a string of text, and have it shown to me in a label.

  @reinstall @ios @android
  Scenario: Entering text into a label
    Given I am on the input screen
      And I type "Welcome to Calabash!" into the textfield
      And I touch the Next button
    Then I am on the result screen
     And I should see "Welcome to Calabash!"

  @ios
  Scenario: Entering text into a label for iOS
    Given I am on the input screen
      And I type "Welcome to Calabash for iOS!" into the textfield
      And I touch the Next button
    Then I am on the result screen
     And I should see "Welcome to Calabash for iOS!"

  @android
  Scenario: Entering text into a label for Android
    Given I am on the input screen
      And I type "Welcome to Calabash for Android!" into the textfield
      And I touch the Next button
    Then I am on the result screen
     And I should see "Welcome to Calabash for Android!"