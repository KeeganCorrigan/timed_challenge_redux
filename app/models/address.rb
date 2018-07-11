class Address < ApplicationRecord
  belongs_to :student
  validates_presence_of :city, :state, :zip_code, :street
end
