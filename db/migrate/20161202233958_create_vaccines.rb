class CreateVaccines < ActiveRecord::Migration[5.0]
  def change
    create_table :vaccines do |t|
      t.string :Content
      t.date :DateOfPlace
      t.string :Description

      t.timestamps
    end
  end
end
