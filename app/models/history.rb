class History < ApplicationRecord
  belongs_to :users
  belongs_to :pets
  belongs_to :animal_health_centers
  belongs_to :treatement_has_vaccines
end
