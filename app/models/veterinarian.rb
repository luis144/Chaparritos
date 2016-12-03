class Veterinarian < ApplicationRecord
  belongs_to :users
  belongs_to :animal_health_centers
  belongs_to :roles
end
