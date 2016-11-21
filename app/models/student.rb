class Student < ActiveRecord::Base

  belongs_to :user
  belongs_to :prefecture
  belongs_to :gender
  belongs_to :school_year

validates :nickname, presence: true



end
