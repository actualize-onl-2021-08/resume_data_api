class AddPasswordCollumnToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :password, :string 
  end
end
