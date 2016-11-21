class Teacher < ActiveRecord::Base

  belongs_to :user
  belongs_to :prefecture
  belongs_to :age
  belongs_to :gender
  belongs_to :univ_year
  belongs_to :bun_ri
  belongs_to :junior_exam
  belongs_to :traffic_time
  belongs_to :tutor_exp
  belongs_to :cram_exp

end
