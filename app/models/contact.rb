class Contact < ActiveRecord::Base
	belongs_to :user

	def fullname
		@fullname = "#{@first_name} #{@lastname}"
	end
end
