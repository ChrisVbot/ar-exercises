class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length:{minimum: 3}
  validates :annual_revenue, numericality:{only_integer: true}
  validate :must_have_mens_or_womens_apparel
  #whenever validation life cycle runs, it will call the method


  def must_have_mens_or_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Must carry men or women's apparel")
    end
  end
end

#symbols don't have a .present? field
#:base specifies more than one field