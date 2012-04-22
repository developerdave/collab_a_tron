class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :surname
      t.string :email
      t.string :username
      t.string :website

      t.timestamps
    end
  end
end
