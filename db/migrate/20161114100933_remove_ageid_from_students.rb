class RemoveAgeidFromStudents < ActiveRecord::Migration
  def change
      remove_column :students, :age_id, :integer
  end
end
