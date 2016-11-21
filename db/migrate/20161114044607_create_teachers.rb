class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|

      t.integer :user_id,          null: false
      t.string  :nickname,         null: false
      t.integer :prefecture_id,    null: false
      t.string  :city,             null: false
      t.integer :age_id,           null: false
      t.integer :gender_id,        null: false
      t.string  :university,       null: false
      t.string  :department,       null: false
      t.integer :univ_year_id,     null: false
      t.integer :bun_ri_id,        null: false
      t.string  :junior
      t.string  :high
      t.boolean :junior_exam,      null: false
      t.string  :fee,              null: false
      t.string  :subject_primary,  null: false
      t.string  :subject_junior,   null: false
      t.string  :subject_high,     null: false
      t.string  :station
      t.string  :traffic
      t.integer :traffic_time_id
      t.integer :tutor_exp
      t.string  :pass_result
      t.boolean :cram_exp
      t.string  :instruction_area
      t.string  :instruction_week
      t.string  :traffic_fee
      t.string  :traffic_setion
      t.string  :favorite_subject
      t.string  :hobby
      t.string  :qualification
      t.string  :club
      t.text  :instruction_exp
      t.text  :self_introduction
      t.timestamps
    end
  end
end

