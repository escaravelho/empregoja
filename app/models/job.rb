class Job < ActiveRecord::Base
  belongs_to :company
  belongs_to :category

  validates :title, :location, :description, :category, :company, presence: true

  def featured?
    featured
  end

  def recent?
    created_at >= 5.days.ago
  end
end
