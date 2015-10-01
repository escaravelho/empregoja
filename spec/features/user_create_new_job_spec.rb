require 'rails_helper'

feature 'User create a new job' do
  scenario 'successfully' do
    Company.create! name: 'Locaweb',
                    phone: '12312346',
                    mail: 'locaweb@locaweb.com.br',
                    location: 'Salvador'

    Category.create! name: 'Desenvolvimento'

    visit new_job_path

    fill_in 'Title', with: 'Desenvolvedor Rails'
    fill_in 'Location', with: 'Salvador'
    select 'Locaweb', from: 'job[company_id]'
    select 'Desenvolvimento', from: 'job[category_id]'
    fill_in 'Description', with: 'Vaga para dev preguiçoso'

    click_on 'Criar Vaga'

    expect(page).to have_content 'Desenvolvedor Rails'
  end

  scenario 'invalid fields' do
    visit new_job_path

    click_on 'Criar Vaga'

    expect(page).to have_content('Warning! All fields are mandatory')
  end
end
