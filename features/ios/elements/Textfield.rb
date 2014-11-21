require File.join(File.dirname(__FILE__),"generics","UIElement")

class Textfield < UIElement

	def initialize(marking = nil)
		unless marking.nil?
			elementQuery = "textField marked:'#{marking}'"
		else
			elementQuery = "textField"
		end

		super(elementQuery)
	end

	def text=(textValue)
		queryView.touch(@elementQuery)
		queryView.keyboard_enter_text(textValue)
	end

end