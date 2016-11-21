class StudentsController < ApplicationController
  ##非ログインユーザーのログインリダイレクト設定
  before_action :authenticate_user!, :except => [:show, :index, :new]

  #prefectureは未定義

  def index
    @students = Student.includes([:prefecture, :gender, :school_year]).page(params[:page]).per(3).order("created_at DESC")
  end

  def show
    @students = Student.includes([:prefecture, :gender, :school_year]).find(params[:id])
    @teacher_count = User.find(current_user.id).teachers.count if user_signed_in?
  end

  def confirm
    @students = Student.includes([:prefecture, :gender, :school_year]).find(params[:student_id])
    @teacher_count = User.find(current_user.id).teachers.count if user_signed_in?
  end

  def complete
    student = Student.find(params[:student_id]).user
    teacher = User.find(current_user.id).teachers.limit(1)
    IntroduceMailer.send_to_student(student, teacher).deliver
  end


  def new
    @student = Student.new
    @prefecture = Prefecture.all
    @gender = Gender.all
    @school_year = SchoolYear.all
    @student_count = User.find(current_user.id).students.count if user_signed_in?
  end

  def create
    Student.create(create_params)


    if @student.true
    else
      render action: :new
    end
  end

  def edit
    @student = Student.find(params[:id])
    @prefecture = Prefecture.all
    @gender = Gender.all
    @school_year = SchoolYear.all
  end

  def update
    student = Student.find(params[:id])
    if student.user_id == current_user.id
      student.update(create_params)
    end
  end

  def destroy
    student = Student.find(params[:id])
    if student.user_id == current_user.id
      student.destroy
    end
  end

    private
  def create_params
    params.require(:student).permit(:nickname, :prefecture_id, :city, :gender_id, :school_year_id, :fee, :traffic_fee, :subject, :station, :station_distance, :station_etc, :instruction_frequency, :instruction_hour, :instruction_week, :instruction_term, :purpose, :request).merge(user_id: current_user.id)
  end

end