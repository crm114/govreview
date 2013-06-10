class Vote < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :phone_number, :score
  validates_presence_of :score, :phone_number
  validates_numericality_of :score, :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 10, :message => "can only be a number between 1 and 10."
  attr_accessible :employee_id

  rails_admin do

  end
end
