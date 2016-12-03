class ClinicsAndVeterinarian < ApplicationRecord
  belongs_to :animal_health_centers
  belongs_to :veterinarians
end
