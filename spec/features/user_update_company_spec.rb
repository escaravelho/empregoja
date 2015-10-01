require 'rails_helper'

feature 'User update a company' do
  scenario 'successfully' do
    company = Company.create! name: 'New Riders',
                              phone: '66625535',
                              mail: 'riders@teste.com.br',
                              location: 'New York'

    visit edit_company_path(company)

    fill_in 'Phone', with: '111111199'

    click_on 'Atualizar Empresa'

    expect(page).to have_content('111111199')
  end

  scenario 'invalid field' do
    company = Company.create! name: 'New Riders',
                              phone: '66625535',
                              mail: 'riders@teste.com.br',
                              location: 'New York'

    visit edit_company_path(company)

    fill_in 'Name', with: ''

    click_on 'Atualizar Empresa'

    expect(page).to have_content('Warning! All fields are mandatory')
  end
end
