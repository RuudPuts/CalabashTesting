Feature: Initial experience
  As a user I want a helpful and simple initial
  experience with the app. I should be able to enter
  a string of text, and have it shown to me in a label.

  @reinstall @ios @android
  Scenario: Entering text into a label
    Given I should be on the Input screen
      And I type "Hello from Calabash!" into the textfield
      And I press the next button
     Then I should be on the Result screen
      And I result label should be "Hello from Calabash!"
