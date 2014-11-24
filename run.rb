#!/usr/bin/env ruby
target = ARGV.shift

Android_APK="prebuilt/CalabashDemo-debug.apk"
iOS_APP="prebuilt/CalabashDemo-cal.app"

all_arguments = ""
ARGV.each do|argument|
	argument = argument.dup
	if argument.include? " "
		argument = argument.gsub(" ", '\ ')
	end
	all_arguments.concat(" #{argument}")
end
all_arguments = all_arguments.strip! || all_arguments

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
  exec("export APP=#{Android_APK} && bundle exec calabash-android run $APP -p android --tags @android #{all_arguments}")
elsif target == 'ios'
  exec("export APP=#{iOS_APP} && export APP_BUNDLE_PATH=$APP && bundle exec cucumber -p ios  --tags @ios #{all_arguments}")
else
  puts "Invalid target #{target}"
end
