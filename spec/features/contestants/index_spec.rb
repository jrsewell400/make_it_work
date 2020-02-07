require 'rails_helper'

RSpec.describe "As a visitor,", type: :feature do
  describe "When I visit the contestants index page" do
    it "I see a list of names of all the contestants and projects that they've been on" do
        challenge_1 = Challenge.create!(theme: "Apartment Furnishings",
                                        project_budget: 150)

        kentaro = Contestant.create!(name: "Kentaro Kameyama",
                                    age: 30,
                                    hometown: "Nowhere, IN",
                                    years_of_experience: 1,
                                    )
        
        jay = Contestant.create!(name: "Jay McCarroll",
                                age: 30,
                                hometown: "Everywhere, CA",
                                years_of_experience: 7,
                                )

        project_1 = Project.create!(name: "Litfit",
                                    material: "Lamp Shade",
                                    challenge_id: challenge_1.id)

        project_2 = Project.create!(name: "LeatherFeather",
                                    material: "Leather",
                                    challenge_id: challenge_1.id)

        project_3 = Project.create!(name: "Rug Tuxedo",
                                    material: "Rugs",
                                    challenge_id: challenge_1.id)  
                                    
        kentaro_projects1 = ContestantProject.create(contestant_id: kentaro.id,
                                                     project_id: project_1.id)

        kentaro_projects2 = ContestantProject.create(contestant_id: kentaro.id,
                                                     project_id: project_3.id)

        jay_projects1 = ContestantProject.create(contestant_id: jay.id,
                                                project_id: project_2.id)

        visit "/contestants"
 
        expect(page).to have_content(kentaro.name)
        expect(page).to have_content(jay.name)
        expect(page).to have_content(project_1.name)
        expect(page).to have_content(project_2.name)
        expect(page).to have_content(project_3.name)
    end
  end
end