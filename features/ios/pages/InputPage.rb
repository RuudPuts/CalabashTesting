require 'calabash-cucumber/ibase'
require File.join(File.dirname(__FILE__),"..","elements", "Textfield")
require File.join(File.dirname(__FILE__),"..","elements", "Button")

class InputPage < Calabash::IBase

	def title
		return "Input"
	end

	def textfield
		# Get the first textfield on the screen
		return Textfield.new
	end

	def next_button
		# Get the first button on the screen marked 'Next'
		return Button.new("Next")
	end

end