class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :Name
      t.text :Description

      t.timestamps
    end
  end
end
