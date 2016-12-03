class CreateTypeOfAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :type_of_animals do |t|
      t.string :Type

      t.timestamps
    end
  end
end
