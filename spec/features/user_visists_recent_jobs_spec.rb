require 'rails_helper'

feature 'User visits recent jobs' do
  scenario 'successfully' do

    company = create(:company)

    category = create(:category)

    job = create(:job)

    travel_to 20.days.ago do
      job = create(:job, title: "Administrador de Sistemas")
    end

    travel_to 4.days.ago do
      job = create(:job, title: "Analista de Sistemas")
    end

    visit root_path

    expect(page).to have_content("Novidade", count: 2)
  end
end
