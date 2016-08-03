class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length:{minimum: 3}
  validates :annual_revenue, numericality: true, allow_nil: false

end
