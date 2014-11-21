class UIElement

	attr_accessor :elementQuery

	def initialize(elementQuery) 
		@elementQuery = elementQuery
	end

	def queryView
		return $calabashQueryView
	end

	def tap
		queryView.touch(elementQuery)
	end

end