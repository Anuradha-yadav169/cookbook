class AddCuisineTo < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes , :cuisine , :string
  end
end
