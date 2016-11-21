class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @email = user.email
    @teachers = user.teachers.includes([:prefecture, :age, :gender, :univ_year, :bun_ri, :junior_exam, :traffic_time, :tutor_exp, :cram_exp])
    @students = user.students.includes([:prefecture, :gender, :school_year])
  end
end




