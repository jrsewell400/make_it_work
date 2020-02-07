require 'rails_helper'

RSpec.describe "As a visitor,", type: :feature do
  describe "When I visit the contestants index page" do
    it "I see a list of names of all the contestants and projects that they've been on" do

        contestant_1 = Contestant.create!(name: "Kentaro Kameyama",
                                          age: 30,
                                          hometown: "Nowhere, IN",
                                          years_of_experience: 1,
                                          project_id: contestant_1.id)
        
        contestant_2 = Contestant.create!(name: "Jay McCarroll",
                                          age: 30,
                                          hometown: "Everywhere, CA",
                                          years_of_experience: 7,
                                          project_id: contestant_2.id)

        project_1 = Project.create!(name: "Litfit",
                                    material: "Lamp Shade",
                                   )

        project_2 = Project.create!(name: "LeatherFeather",
                                    material: "Leather",
                                   )  

        project_3 = Project.create!(name: "Rug Tuxedo",
                                    material: "Rugs",
                                   )                               
        binding.pry
        # visit "/projects/#{project_1.id}"
        
        # expect(page).to have_content("Challenge Theme: Apartment Furnishings")
        # expect(page).to have_content("Litfit")
        # expect(page).to have_content("Lamp Shade")
    end
  end
end