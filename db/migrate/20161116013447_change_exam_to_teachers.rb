class ChangeExamToTeachers < ActiveRecord::Migration
  def change
    change_column :teachers, :junior_exam_id, :integer
    change_column :teachers, :cram_exp_id, :integer
  end
end
