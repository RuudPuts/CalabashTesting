#!/usr/bin/env ruby
target = ARGV.shift

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
  exec("export APP=prebuilt/CalabashDemo-debug.apk && bundle exec calabash-android run $APP -p android --tags @android #{ARGV.join(' ')}")
elsif target == 'ios'
  exec("export APP=prebuilt/CalabashDemo-cal.app && export APP_BUNDLE_PATH=$APP && bundle exec cucumber -p ios --tags @ios #{ARGV.join(' ')}")
else
  puts "Invalid target #{target}"
end