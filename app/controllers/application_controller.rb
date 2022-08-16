class ApplicationController < ActionController::Base
	def favorite_text
	return @favorite_exists ? "Unwish" : "Wish"
		
	end

	helper_method :favorite_text
end
