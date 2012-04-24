class AddJobRoleToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :job_role, :string
  end
end
