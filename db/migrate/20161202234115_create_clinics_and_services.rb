class CreateClinicsAndServices < ActiveRecord::Migration[5.0]
  def change
    create_table :clinics_and_services do |t|
      t.references :animal_health_centers, foreign_key: true
      t.references :services, foreign_key: true
      t.integer :NumOfServices

      t.timestamps
    end
  end
end
