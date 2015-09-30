require 'rails_helper'

feature 'User visits featured job' do
  scenario 'successfully' do

    company = create(:company)

    category = create(:category)

    job = create(:job)

    visit job_path(job)

    expect(page).to have_content "Vaga em Destaque"
  end
end
