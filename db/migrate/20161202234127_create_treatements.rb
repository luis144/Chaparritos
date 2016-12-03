class CreateTreatements < ActiveRecord::Migration[5.0]
  def change
    create_table :treatements do |t|
      t.references :veterinarians, foreign_key: true
      t.references :pets, foreign_key: true
      t.references :users, foreign_key: true
      t.text :Description

      t.timestamps
    end
  end
end
