class SorceryCore < ActiveRecord::Migration
  def self.up
      add_column :profiles, :crypted_password, :string, :default => nil
      add_column :profiles, :salt, :string, :default => nil
  end

  def self.down
    remove_column :crypted_password
    remove_column :salt
  end
end