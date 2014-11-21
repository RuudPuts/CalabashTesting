require File.join(File.dirname(__FILE__),"generics","UIElement")

class Button < UIElement

	def initialize(marking) 
		unless marking.nil?
			elementQuery = "button marked:'#{marking}'"
		else
			elementQuery = "button"
		end

		super(elementQuery)
	end

end