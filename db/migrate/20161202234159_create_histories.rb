class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.references :users, foreign_key: true
      t.references :pets, foreign_key: true
      t.references :animal_health_centers, foreign_key: true
      t.string :Illness
      t.date :Date
      t.time :Hour
      t.references :treatement_has_vaccines, foreign_key: true

      t.timestamps
    end
  end
end
