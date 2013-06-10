class Employee < ActiveRecord::Base
  belongs_to :agency
  has_many :votes
  accepts_nested_attributes_for :votes, :allow_destroy => true
  attr_accessible :votes_attributes, :allow_destroy => true
  attr_accessible :first_name, :last_name, :agency_id
  attr_accessor :vote_average, :name
  validates_presence_of :first_name, :last_name, :agency_id

  rails_admin do
    list do
      field :first_name
      field :last_name
      field :agency
      field :vote_average
    end
  end

  def name
    "#{self.first_name}  #{self.last_name}"
  end

  def vote_average
    Vote.average(:score, :conditions => ['employee_id = ?', "#{self.id}"]).to_f rescue 0.0
  end
end
