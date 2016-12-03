class CreateVeterinarians < ActiveRecord::Migration[5.0]
  def change
    create_table :veterinarians do |t|
      t.references :users, foreign_key: true
      t.references :animal_health_centers, foreign_key: true
      t.references :roles, foreign_key: true
      t.string :CedProfessional
      t.integer :ExperienceYears

      t.timestamps
    end
  end
end
