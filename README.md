# Cross platform Calabash testing

This project contains all Calabash feature-files, step-definitions and abstraction layers for both iOS and Android.

### Installation

Clone the repository manually. Following example will clone the repository in your Documents folder, install Calabash for both iOS and Android and setup the Ruby environment. First open a new Terminal screen, than enter these commands:

```sh
$ cd ~/Documents
$ git clone https://github.com/RuudPuts/CalabashTesting
$ cd CalabashTesting
$ bundle install
```
### Running tests

To run tests, we'll use the `run.rb` script in the root of the CalabashTesting folder. This script can be used for both iOS and Android!
Running tests consists of two steps:
1. Setting an environment variable to tell Calabash which app should be tested
2. Telling Calabash to start the tests, optionally with a device target

##### Running tests for Android
To run the Calabash tests for Android, open a Terminal window and execute the following commands. This will tell Calabash to start testing on the APK file you specify in the second command. Calabash will search for connected Android devices, and launch the tests on the first one it finds.
```sh
$ cd ~/Documents/CalabashTesting
$ export ANDROID_APK="<Filepath to your Android APK>"
$ ./run.rb android
```

To find all available devices, make sure ADB is installed and run the following command:
```sh
$ adb devices
```
This will give an output like as following. The first part of each line is your device's unique identifier, and should be used as the `DEVICE_TARGET`:
```
List of devices attached 
emulator-5554       device
02c5cbae08e457f7    device
```

For Android it's recommended to alway specifiy the the device the tests should run on. Asuming we want to run on the device `02c5cbae08e457f7` the command will look like this:
```sh
$ cd ~/Documents/CalabashTesting
$ export ANDROID_APK="<Filepath to your Android APK>"
$ ./run.rb android DEVICE_TARGET=02c5cbae08e457f7
```

##### Running tests for iOS
To run the Calabash tests for iOS, open a Terminal window and execute the following commands. This will tell iOS to start testing on the .app file you specify in the second command. When no specific device is setup Calabash will launch the iPhone 5 simulator, and start testing.
```sh
$ cd ~/Documents/CalabashTesting
$ export IOS_APP="<Filepath to your iOS app>"
$ ./run.rb ios
```

Running tests on a physical iOS device needs a bit more setup work than testing on Android devices. iOS needs both the `DEVICE_TARGET` and the `DEVICE_ENDPOINT` parameter. `DEVICE_ENDPOINT` is the endpoint to the Calabash HTTP-server within the app, in other words it's the IP-address of your iOS device with a port. It's recommended to set your iOS device to a static IP.

To find all available devices, make sure ADB is installed and run the following command
```sh
$ instruments -s devices
```
This will give an output like as following. The hash within the [] is your device's unique identifier, and should be used as the `DEVICE_TARGET`:
```
Resizable iPad (8.1 Simulator) [D83BFFF8-A5F4-477A-BE42-955BF7E16C7E]
Resizable iPhone (8.1 Simulator) [0BC3415E-93B5-49FC-B0A9-94BFC20AAF80]
iPad 2 (8.1 Simulator) [E216EAFD-0BF8-4A88-A094-102A33BB5D3D]
iPad Air (8.1 Simulator) [06B1B1A6-E7C5-43F0-8305-18D7F43E1F86]
iPad Retina (8.1 Simulator) [07AF55B4-4D8C-4952-9336-4B7A48609AB2]
iPhone 4s (8.1 Simulator) [1F1D0634-D577-4473-8B27-EF8F45BC6E87]
iPhone 5 (8.1 Simulator) [98AADBDF-C2BA-4FA7-86D1-A8458C7E341F]
iPhone 5s (8.1 Simulator) [2D9778E1-BC66-496B-A742-0D02ECEEFBF3]
iPhone 6 (8.1 Simulator) [C9486D2F-3568-4BB8-B529-42121DEA86B1]
iPhone 6 Plus (8.1 Simulator) [FF21D3C6-6620-4CA4-81C8-7178F1011934]
Demo Device (8.1 Simulator) [AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE]
```

The example below will use the `Demo device`, which has a static IP `192.168.1.100`
```sh
$ cd ~/Documents/CalabashTesting
$ export IOS_APP="<Filepath to your iOS app>"
$ ./run.rb ios DEVICE_TARGET=AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE DEVICE_ENDPOINT=http://192.168.1.100:37265
```

### Questions?
If you have any questions, bugs or remarks please contact me via email `ruud.puts@philips.com` or via Skype `putsruud`
