# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161202234159) do

  create_table "animal_health_centers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Name"
    t.string   "Address"
    t.string   "PhoneNumber"
    t.integer  "services_id"
    t.integer  "FeeByPet"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["services_id"], name: "index_animal_health_centers_on_services_id", using: :btree
  end

  create_table "clinics_and_services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "animal_health_centers_id"
    t.integer  "services_id"
    t.integer  "NumOfServices"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["animal_health_centers_id"], name: "index_clinics_and_services_on_animal_health_centers_id", using: :btree
    t.index ["services_id"], name: "index_clinics_and_services_on_services_id", using: :btree
  end

  create_table "clinics_and_veterinarians", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "animal_health_centers_id"
    t.integer  "veterinarians_id"
    t.integer  "NumOfVeterinarians"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["animal_health_centers_id"], name: "index_clinics_and_veterinarians_on_animal_health_centers_id", using: :btree
    t.index ["veterinarians_id"], name: "index_clinics_and_veterinarians_on_veterinarians_id", using: :btree
  end

  create_table "histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "users_id"
    t.integer  "pets_id"
    t.integer  "animal_health_centers_id"
    t.string   "Illness"
    t.date     "Date"
    t.time     "Hour"
    t.integer  "treatement_has_vaccines_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["animal_health_centers_id"], name: "index_histories_on_animal_health_centers_id", using: :btree
    t.index ["pets_id"], name: "index_histories_on_pets_id", using: :btree
    t.index ["treatement_has_vaccines_id"], name: "index_histories_on_treatement_has_vaccines_id", using: :btree
    t.index ["users_id"], name: "index_histories_on_users_id", using: :btree
  end

  create_table "pets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "users_id"
    t.string   "Name"
    t.float    "Weigth",             limit: 24
    t.integer  "type_of_animals_id"
    t.string   "RaceOrSpecie"
    t.string   "StateOfPet"
    t.date     "Birthdate"
    t.text     "Description",        limit: 65535
    t.string   "Status"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["type_of_animals_id"], name: "index_pets_on_type_of_animals_id", using: :btree
    t.index ["users_id"], name: "index_pets_on_users_id", using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Name"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_roles_on_users_id", using: :btree
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Name"
    t.text     "Description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "treatement_has_vaccines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "vaccines_id"
    t.integer  "treatements_id"
    t.integer  "users_id"
    t.text     "Description",    limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["treatements_id"], name: "index_treatement_has_vaccines_on_treatements_id", using: :btree
    t.index ["users_id"], name: "index_treatement_has_vaccines_on_users_id", using: :btree
    t.index ["vaccines_id"], name: "index_treatement_has_vaccines_on_vaccines_id", using: :btree
  end

  create_table "treatements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "veterinarians_id"
    t.integer  "pets_id"
    t.integer  "users_id"
    t.text     "Description",      limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["pets_id"], name: "index_treatements_on_pets_id", using: :btree
    t.index ["users_id"], name: "index_treatements_on_users_id", using: :btree
    t.index ["veterinarians_id"], name: "index_treatements_on_veterinarians_id", using: :btree
  end

  create_table "type_of_animals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_has_pets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pets_id"
    t.integer  "users_id"
    t.integer  "NumOfPets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pets_id"], name: "index_user_has_pets_on_pets_id", using: :btree
    t.index ["users_id"], name: "index_user_has_pets_on_users_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "UserName"
    t.string   "Name"
    t.string   "Address"
    t.string   "Password"
    t.date     "Birthdate"
    t.string   "Ocupation"
    t.string   "Email"
    t.string   "Gender"
    t.string   "PhoneNumber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vaccines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Content"
    t.date     "DateOfPlace"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "veterinarians", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "users_id"
    t.integer  "animal_health_centers_id"
    t.integer  "roles_id"
    t.string   "CedProfessional"
    t.integer  "ExperienceYears"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["animal_health_centers_id"], name: "index_veterinarians_on_animal_health_centers_id", using: :btree
    t.index ["roles_id"], name: "index_veterinarians_on_roles_id", using: :btree
    t.index ["users_id"], name: "index_veterinarians_on_users_id", using: :btree
  end

  add_foreign_key "animal_health_centers", "services", column: "services_id"
  add_foreign_key "clinics_and_services", "animal_health_centers", column: "animal_health_centers_id"
  add_foreign_key "clinics_and_services", "services", column: "services_id"
  add_foreign_key "clinics_and_veterinarians", "animal_health_centers", column: "animal_health_centers_id"
  add_foreign_key "clinics_and_veterinarians", "veterinarians", column: "veterinarians_id"
  add_foreign_key "histories", "animal_health_centers", column: "animal_health_centers_id"
  add_foreign_key "histories", "pets", column: "pets_id"
  add_foreign_key "histories", "treatement_has_vaccines", column: "treatement_has_vaccines_id"
  add_foreign_key "histories", "users", column: "users_id"
  add_foreign_key "pets", "type_of_animals", column: "type_of_animals_id"
  add_foreign_key "pets", "users", column: "users_id"
  add_foreign_key "roles", "users", column: "users_id"
  add_foreign_key "treatement_has_vaccines", "treatements", column: "treatements_id"
  add_foreign_key "treatement_has_vaccines", "users", column: "users_id"
  add_foreign_key "treatement_has_vaccines", "vaccines", column: "vaccines_id"
  add_foreign_key "treatements", "pets", column: "pets_id"
  add_foreign_key "treatements", "users", column: "users_id"
  add_foreign_key "treatements", "veterinarians", column: "veterinarians_id"
  add_foreign_key "user_has_pets", "pets", column: "pets_id"
  add_foreign_key "user_has_pets", "users", column: "users_id"
  add_foreign_key "veterinarians", "animal_health_centers", column: "animal_health_centers_id"
  add_foreign_key "veterinarians", "roles", column: "roles_id"
  add_foreign_key "veterinarians", "users", column: "users_id"
end
