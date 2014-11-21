#!/usr/bin/env ruby
target = ARGV[0]

Android_APK="prebuilt/CalabashDemo-debug.apk"
iOS_APP="prebuilt/CalabashDemo-cal.app"

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
