class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length:{minimum: 3}
  validates :annual_revenue, numericality: true, allow_nil: false
  validates :must_have_mens_or_womens_apparel, confirmation:true


  def must_have_mens_or_womens_apparel
    unless :mens_apparel.present? || :womens_apparel.present?
      errors.add("Must carry men or women's apparel")
    end
  end
end

