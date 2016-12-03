class CreateClinicsAndVeterinarians < ActiveRecord::Migration[5.0]
  def change
    create_table :clinics_and_veterinarians do |t|
      t.references :animal_health_centers, foreign_key: true
      t.references :veterinarians, foreign_key: true
      t.integer :NumOfVeterinarians

      t.timestamps
    end
  end
end
