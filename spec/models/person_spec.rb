require "spec_helper"

describe Person do
  it "#should return the full name" do
    keith_sweat = Person.create!(first_name: "Keith", last_name: "Sweat")
    expect(keith_sweat.name).to eq("Keith Sweat")
  end
end