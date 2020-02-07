require 'rails_helper'

RSpec.describe "As a visitor,", type: :feature do
  describe "when I visit a project's show page" do
    it "I can see the project's name, material, and theme" do
        challenge_1 = Challenge.create!(theme: "Apartment Furnishings",
                                        project_budget: 150)

        project_1 = Project.create!(name: "Litfit",
                                    material: "Lamp Shade",
                                    challenge_id: challenge_1.id)
                                   
        visit "/projects/:id"
        

    end
  end
end



# As a visitor,
# When I visit a project's show page ("/projects/:id"),
# I see that project's name and material
# And I also see the theme of the challenge that this project belongs to.
# (e.g.    Litfit
#     Material: Lamp Shade
#   Challenge Theme: Apartment Furnishings)