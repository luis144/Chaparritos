class CreateTreatementHasVaccines < ActiveRecord::Migration[5.0]
  def change
    create_table :treatement_has_vaccines do |t|
      t.references :vaccines, foreign_key: true
      t.references :treatements, foreign_key: true
      t.references :users, foreign_key: true
      t.text :Description

      t.timestamps
    end
  end
end
