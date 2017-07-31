class AddIndexToDepartmentsOnName < ActiveRecord::Migration[5.1]
  def change
    add_index(:departments, :name, unique: true)
  end
end
