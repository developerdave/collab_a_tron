class AddTwitterToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :twitter, :string
  end
end
