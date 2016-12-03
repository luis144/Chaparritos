class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :UserName
      t.string :Name
      t.string :Address
      t.string :Password
      t.date :Birthdate
      t.string :Ocupation
      t.string :Email
      t.string :Gender
      t.string :PhoneNumber

      t.timestamps
    end
  end
end
