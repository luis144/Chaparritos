class Pet < ApplicationRecord
  belongs_to :users
  belongs_to :type_of_animals
end
