class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :surname
      t.string :avatar_url
      t.string :username

      t.timestamps
    end
  end
end
