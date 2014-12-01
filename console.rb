#!/usr/bin/env ruby
target = ARGV.shift
if target.nil?
  puts "No target specified. Either run './run.rb ios' or './run.rb android'"
  exit(false)
else
  target = target.downcase
end

if target == "android"
  ANDROID_APK=%x(echo "$ANDROID_APK").strip
  if ANDROID_APK.length == 0
    puts "No Android APK specified. Please run 'export ANDROID_APK=\"YOUR_APK_FILE_PATH\"' first!"
    exit(false)
  end
elsif target == "ios"
  IOS_APP=%x(echo "$IOS_APP").strip
  if IOS_APP.length == 0
    puts "No iOS app specified. Please run 'export IOS_APP=\"YOUR_.APP_FILE_PATH\"' first!"
    exit(false)
  end
end

%x(unset ANDROID_APK)
%x(unset IOS_APP)

unless system("bundle version")
  puts "Can't find bundler. Check your ruby environment."
  puts "If your using ~/.calabash then run:"
  puts <<EOF

export GEM_HOME=~/.calabash
export GEM_PATH=~/.calabash
export PATH="$PATH:$HOME/.calabash/bin"
EOF
  exit(false)
end

if target == 'android'
  exec("bundle exec calabash-android console #{Android_APK}")
elsif target == 'ios'
  exec("APP_BUNDLE_PATH=#{iOS_APP} bundle exec calabash-ios console")
else
    puts "Invalid target #{target}"
end
