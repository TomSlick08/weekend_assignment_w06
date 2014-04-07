require "spec_helper"

describe Person do
  
  it "#should return the full name" do
    keith_sweat = Person.create!(first_name: "Keith", last_name: "Sweat")
    expect(keith_sweat.name).to eq("Keith Sweat")
  end

  it "#should return the birthday" do 
  	david_kim = Person.create(birth_date: "1985-08-31")
  	expect(david_kim.birth_date).to eq(Sat, 31 Aug 1985)
	end

	describe "#have_a_drink" do
		it "should increase drinks attr by 1 if over 21" do 
			me = Person.create(birth_date: "1986-07-24")
			me.have_a_drink
			expect(me.drinks).to eq 1
		end
		it "should reject people under 21" do 
			marcus = Person.create(birthdate: "1998-03-18")
			expect(marcus.have_a_drink).to eq "Wait a few years"
		end
		it "should not let you drink if you already had 3 or more" do
			ryan = Person.create(birthdate: "1985-05-21")
			ryan.update_attributes(drinks: 3)
			expect(person.have_a_drink).to eq "Go home you're drunk"
		end
	end

	describe "#drive_a_car" do 
		it "should reject people who aren't 18 yet " do 
			marcus = Person.create(birthdate: "1998-03-18")
			expect(marcus.drive_a_Car).to eq "Not yet youngin"
	end

end

end


end

