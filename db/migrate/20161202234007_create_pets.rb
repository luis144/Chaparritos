class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.references :users, foreign_key: true
      t.string :Name
      t.float :Weigth
      t.references :type_of_animals, foreign_key: true
      t.string :RaceOrSpecie
      t.string :StateOfPet
      t.date :Birthdate
      t.text :Description
      t.string :Status

      t.timestamps
    end
  end
end
