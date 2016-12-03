class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :Name
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
