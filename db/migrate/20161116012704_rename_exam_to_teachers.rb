class RenameExamToTeachers < ActiveRecord::Migration
  def change
    rename_column :teachers, :junior_exam, :junior_exam_id
    rename_column :teachers, :cram_exp, :cram_exp_id
  end
end
