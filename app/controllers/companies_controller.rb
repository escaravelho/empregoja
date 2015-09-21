class CompaniesController < ApplicationController
  before_action :set_company, only:[:edit, :show, :update]

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if(@company.save)
      redirect_to @company
    else
      flash[:error] = "Warning! All fields are mandatory."
      render 'new'
    end
  end

  def edit
  end

  def update
    if @company.update(company_params)
      redirect_to @company
    end
  end

  def show
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :location, :phone, :mail)
  end
end
