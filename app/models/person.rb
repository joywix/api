class Person < ApplicationRecord

  has_many :documents

  validates_presence_of :first_name, :last_name
  
end
