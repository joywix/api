class Document < ApplicationRecord

  belongs_to :person

  validates_presence_of :first_name, :last_name, :person_id

end
