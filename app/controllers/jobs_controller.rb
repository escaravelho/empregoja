class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params.require(:job).permit(:title, :location, :category, :company, :description))

    if @job.save
      redirect_to @job
    end
  end
end
