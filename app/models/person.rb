class Person < ActiveRecord::Base

	def name
		self.first_name+" "+(self.last_name)
	end

	def birthday
		#self.birth_date.to_s
	end

	def have_a_drink

	end

	def drive_a_car

	end

	def sober_up

	end

end