########################################
#                                      #
#       Important Note                 #
#                                      #
#   When running calabash-ios tests at #
#   www.xamarin.com/test-cloud         #
#   this file will be overwritten by   #
#   a file which automates             #
#   app launch on devices.             #
#                                      #
#   Don't rely on this file being      #
#   present when running at            #
#   Xamarin Test Cloud                 #
#                                      #
########################################

require 'calabash-cucumber/launcher'


Before do |scenario|
  @calabash_launcher = Calabash::Cucumber::Launcher.new
  $calabashQueryView = self
  scenario_tags = scenario.source_tag_names
  if scenario_tags.include?('@reinstall')
    if ENV.to_hash.has_key?('DEVICE_TARGET')
      ios_deploy = File.join(File.dirname(__FILE__),"tools","ios-deploy")
      system("#{ios_deploy} --bundle $APP_BUNDLE_PATH --id $DEVICE_TARGET --uninstall > installation.log")
    else
      @calabash_launcher.reset_app_jail
    end
  end
  unless @calabash_launcher.calabash_no_launch?
    @calabash_launcher.relaunch()
    @calabash_launcher.calabash_notify(self)
  end
end

After do |scenario|
  unless @calabash_launcher.calabash_no_stop?
    calabash_exit
    if @calabash_launcher.active?
      @calabash_launcher.stop
    end
  end
end
