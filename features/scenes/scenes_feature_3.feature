Feature: Things


   @iOS @Android @Implemented @RTLVL1 @RTLVL2 @RTLVL3 @RTLVL4
   Scenario: L01 - Create an alarm
      Given I am on the "Scenes Overview" screen

       When I open the side-menu
        And I tap on the "Alarms & Timers" menu option
       Then I should be on the "Alarms" screen

       When I tap the "addAlarmButton" button
       Then A dropdown menu should be visible with options "Alarm" and "Timer"
        And the option "Cancel" should be present

       When I tap the "Alarm" dropdown option
       Then I should be on the "Alarm" screen

       When I set the time to "12" hours and "59" minutes
        And I tap on the "Scene" row
       Then I am on the "Scene" screen

       When I select the "Sunset" scene
       Then I am on the "Alarm" screen
        And the "Scene" row has value "Sunset"

       When I tap on the "Fade" row
       Then I am on the "Fade" screen

       When I set the fade to "5 min"
        And take picture
        And I tap the back button
       Then I am on the "Alarm" screen
        And the "Fade" row has value "5 min"

       When I tap on the "Repeat" row
       Then I am on the "Repeat" screen

       When I tap on the "Select all" row
        And I tap the back button
       Then I am on the "Alarm" screen
        And the "Repeat" row has value "Every day"


   @iOS @Implemented @RTLVL1 
   Scenario: L02 - Create an alarm
      Given I am on the "Scenes Overview" screen

       When I open the side-menu
        And I tap on the "Alarms & Timers" menu option
       Then I should be on the "Alarms" screen

       When I tap the "addAlarmButton" button
       Then A dropdown menu should be visible with options "Alarm" and "Timer"
        And the option "Cancel" should be present

       When I tap the "Alarm" dropdown option
       Then I should be on the "Alarm" screen

       When I set the time to "12" hours and "59" minutes
        And I tap on the "Scene" row
       Then I am on the "Scene" screen

       When I select the "Sunset" scene
       Then I am on the "Alarm" screen
        And the "Scene" row has value "Sunset"

       When I tap on the "Fade" row
       Then I am on the "Fade" screen

       When I set the fade to "5 min"
        And take picture
        And I tap the back button
       Then I am on the "Alarm" screen
        And the "Fade" row has value "5 min"

       When I tap on the "Repeat" row
       Then I am on the "Repeat" screen

       When I tap on the "Select all" row
        And I tap the back button
       Then I am on the "Alarm" screen
        And the "Repeat" row has value "Every day"


   @Android @Implemented @RTLVL1 @RTLVL2 @RTLVL3
   Scenario: L03 - Create an alarm
      Given I am on the "Scenes Overview" screen

       When I open the side-menu
        And I tap on the "Alarms & Timers" menu option
       Then I should be on the "Alarms" screen

       When I tap the "addAlarmButton" button
       Then A dropdown menu should be visible with options "Alarm" and "Timer"
        And the option "Cancel" should be present

       When I tap the "Alarm" dropdown option
       Then I should be on the "Alarm" screen

       When I set the time to "12" hours and "59" minutes
        And I tap on the "Scene" row
       Then I am on the "Scene" screen

       When I select the "Sunset" scene
       Then I am on the "Alarm" screen
        And the "Scene" row has value "Sunset"

       When I tap on the "Fade" row
       Then I am on the "Fade" screen

       When I set the fade to "5 min"
        And take picture
        And I tap the back button
       Then I am on the "Alarm" screen
        And the "Fade" row has value "5 min"

       When I tap on the "Repeat" row
       Then I am on the "Repeat" screen

       When I tap on the "Select all" row
        And I tap the back button
       Then I am on the "Alarm" screen
        And the "Repeat" row has value "Every day"
