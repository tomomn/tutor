class RenameTutorexamToTeachers < ActiveRecord::Migration
  def change
      rename_column :teachers, :tutor_exp, :tutor_exp_id
  end
end
