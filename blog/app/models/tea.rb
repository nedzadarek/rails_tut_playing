class Tea < ActiveRecord::Base
  validates :type_of_fluid, numericality:  {less_than: 10 }
end
