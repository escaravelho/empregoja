class Company < ActiveRecord::Base
  has_many :jobs

  validates :name, :phone, :mail, :location, presence: true

end
