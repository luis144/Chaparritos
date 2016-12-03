class Treatement < ApplicationRecord
  belongs_to :veterinarians
  belongs_to :pets
  belongs_to :users
end
