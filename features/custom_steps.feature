Feature: Initial experience
  As a user I want a helpful and simple initial
  experience with the app. I should be able to enter
  a string of text, and have it shown to me in a label.

  @reinstall @ios @android
  Scenario: Entering text into a label
    Given I am on the Input screen
      And I type "Hello from Calabash!" into the textfield with id "input_textfield"
      And I press the button with id "input_next_button"
     Then I am on the Result screen
      And I see the text "Hello from Calabash!" in the label with id "result_label"

  @ios
  Scenario: Entering text into a label for iOS
    Given I am on the Input screen
      And I type "Hello from Calabash for iOS!" into the textfield with id "input_textfield"
      And I press the button with id "input_next_button"
     Then I am on the Result screen
      And I see the text "Hello from Calabash for iOS!" in the label with id "result_label"

  @android
  Scenario: Entering text into a label for Android
    Given I am on the Input screen
      And I type "Hello from Calabash for Android!" into the textfield with id "input_textfield"
      And I press the button with id "input_next_button"
     Then I am on the Result screen
      And I see the text "Hello from Calabash for Android!" in the label with id "result_label"