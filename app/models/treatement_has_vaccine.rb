class TreatementHasVaccine < ApplicationRecord
  belongs_to :vaccines
  belongs_to :treatements
  belongs_to :users
end
