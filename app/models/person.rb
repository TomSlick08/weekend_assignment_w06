class Person < ActiveRecord::Base

	def name
		self.first_name+" "+(self.last_name)
	end

	def birthday
		self.birth_date.to_s
	end

	def have_a_drink
			age = Date.today.year - self.birth_date.year
			if age >= 21 
					if self.drinks < 3
					self.drinks += 1
					else 
						return "Go home you're drunk"
					end
			else 
				return "Wait a few years."
			end
	end

	def drive_a_car
		age = Date.today.year - self.birthdate.year
		if age < 18
			return "Not yet youngin"
		elsif age >= 18 && self.licensce == true
			return true
		elsif age >= 21 && self.licensce == true && self.drinks > 0
			return "Looks like a cab for you tonight"
		end
	end

	def sober_up
		if self.drinks > 0
			self.drinks -= 1
			save
		end
	end

end