require 'rails_helper'

feature 'User visits featured job' do
  scenario 'successfully' do
    job = create(:job)

    visit job_path(job)

    expect(page).to have_content 'Vaga em Destaque'
  end
end
