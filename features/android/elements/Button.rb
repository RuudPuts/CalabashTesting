require File.join(File.dirname(__FILE__),"generics","UIElement")

class Button < UIElement

	def initialize(marking) 
		unless marking.nil?
			elementQuery = "android.widget.Button marked:'#{marking}'"
		else
			elementQuery = "android.widget.Button"
		end

		super(elementQuery)
	end

end