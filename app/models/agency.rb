class Agency < ActiveRecord::Base
  attr_accessible :name, :phone_number
  has_many :employees
  accepts_nested_attributes_for :employees, :allow_destroy => true
  attr_accessible :employees_attributes, :allow_destroy => true
  validates_presence_of :name, :phone_number

  rails_admin do
    configure :employees do
      # configuration here
    end
  end
end
