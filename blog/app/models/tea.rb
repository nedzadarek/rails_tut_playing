class Tea < ActiveRecord::Base
  validates :type_of_fluid, numericality:  {less_than: 10 }
  has_many :comments, dependent: :destroy
  translates :extra_content
end
