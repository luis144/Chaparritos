class ClinicsAndService < ApplicationRecord
  belongs_to :animal_health_centers
  belongs_to :services
end
