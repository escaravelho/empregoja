require 'rails_helper'

feature 'User visits featured job' do
  scenario 'successfully' do
    company = Company.create name: "HE:Labs",
                         phone: "1192928556",
                         mail: "he@helabs.com.br",
                         location: "Rio de Janeiro"

    category = Category.create name: "Desenvolvimento de Software"

    job = Job.create title: "Desenvolvedor Rails",
                         location: "Rio de Janeiro",
                         company: company,
                         category: category,
                         description: "Vaga para desenvolvimento remoto.",
                         featured: true

    visit job_path(job)

    expect(page).to have_content "Vaga em Destaque"
  end
end
