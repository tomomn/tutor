class CreateJuniorExams < ActiveRecord::Migration
  def change
    create_table :junior_exams do |t|

      t.string  :junior_exam,   null: false
      t.timestamps
    end
  end
end
