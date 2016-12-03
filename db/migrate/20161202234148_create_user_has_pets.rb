class CreateUserHasPets < ActiveRecord::Migration[5.0]
  def change
    create_table :user_has_pets do |t|
      t.references :pets, foreign_key: true
      t.references :users, foreign_key: true
      t.integer :NumOfPets

      t.timestamps
    end
  end
end
