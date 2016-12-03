class CreateAnimalHealthCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :animal_health_centers do |t|
      t.string :Name
      t.string :Address
      t.string :PhoneNumber
      t.references :services, foreign_key: true
      t.integer :FeeByPet

      t.timestamps
    end
  end
end
