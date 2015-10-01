require 'rails_helper'

feature 'User update job' do
  scenario 'successfully'do
    company = Company.create! name: 'Campus Code',
                              phone: '984458545',
                              mail: 'campus@campuscode.com.br',
                              location: 'Acre'

    category = Category.create! name: 'DBA'

    job = Job.create! title: 'Desenvolvedor',
                      location: 'São Paulo',
                      company: company,
                      category: category,
                      description: 'Vaga de desenvolvimento'

    visit edit_job_path(job)

    fill_in 'Title', with: 'Homologador'

    click_on 'Atualizar Vaga'

    expect(page).to have_content('Homologador')
  end
end
