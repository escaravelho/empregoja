require 'rails_helper'

feature 'User create a new company' do
  scenario 'successfully' do

    visit new_company_path

    fill_in "Name", with: "Consist"
    fill_in "Phone", with: "999899996"
    fill_in "Mail", with: "consist@consist.com.br"
    fill_in "Location", with: "São Paulo"

    click_on 'Criar Empresa'

    expect(page).to have_content "Consist"
    expect(page).to have_content "999899996"
    expect(page).to have_content "consist@consist.com.br"
    expect(page).to have_content "São Paulo"
  end

  scenario 'invalid company' do

    visit new_company_path

    fill_in "Name", with: "UOL"

    click_on "Criar Empresa"

    expect(page).to have_content "Warning! All fields are mandatory"
  end
end
