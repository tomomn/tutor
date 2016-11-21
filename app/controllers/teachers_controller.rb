class TeachersController < ApplicationController
  ##非ログインユーザーのログインリダイレクト設定
  before_action :authenticate_user!, :except => [:show, :index, :new]

  #prefectureは未定義

  def index
    @teachers = Teacher.includes([:prefecture, :age, :gender, :univ_year, :bun_ri, :junior_exam, :traffic_time, :tutor_exp, :cram_exp]).page(params[:page]).per(3).order("created_at DESC")
  end

  def show
    @teachers = Teacher.includes([:prefecture, :age, :gender, :univ_year, :bun_ri, :junior_exam, :traffic_time, :tutor_exp, :cram_exp]).find(params[:id])
    @student_count = User.find(current_user.id).students.count if user_signed_in?
  end

  def confirm
    @teachers = Teacher.includes([:prefecture, :age, :gender, :univ_year, :bun_ri, :junior_exam, :traffic_time, :tutor_exp, :cram_exp]).find(params[:teacher_id])
    @student_count = User.find(current_user.id).students.count if user_signed_in?
  end

  def complete
    teacher = Teacher.find(params[:teacher_id]).user
    student = User.find(current_user.id).students.limit(1)
    IntroduceMailer.send_to_teacher(teacher, student).deliver
  end

  def new
      @teacher = Teacher.new
      @prefecture = Prefecture.all
      @age = Age.all
      @gender = Gender.all
      @univ_year = UnivYear.all
      @bun_ri = BunRi.all
      @junior_exam = JuniorExam.all
      @traffic_time = TrafficTime.all
      @tutor_exp = TutorExp.all
      @cram_exp = CramExp.all
      @teacher_count = User.find(current_user.id).teachers.count if user_signed_in?
  end

  def create
      Teacher.create(create_params)
  end

  def edit
    @teacher = Teacher.find(params[:id])
    @prefecture = Prefecture.all
    @age = Age.all
    @gender = Gender.all
    @univ_year = UnivYear.all
    @bun_ri = BunRi.all
    @junior_exam = JuniorExam.all
    @traffic_time = TrafficTime.all
    @tutor_exp = TutorExp.all
    @cram_exp = CramExp.all
  end

  def update
    teacher = Teacher.find(params[:id])
    if teacher.user_id == current_user.id
      teacher.update(create_params)
    end
  end

  def destroy
    teacher = Teacher.find(params[:id])
    if teacher.user_id == current_user.id
      teacher.destroy
    end
  end

    private
  def create_params
    params.require(:teacher).permit(:nickname, :prefecture_id, :city, :age_id, :gender_id, :university, :department, :univ_year_id, :bun_ri_id, :junior, :high, :junior_exam_id, :fee, :subject_primary, :subject_junior, :subject_high, :station, :traffic, :traffic_time_id, :tutor_exp_id, :pass_result, :cram_exp_id, :instruction_area, :instruction_week, :traffic_fee, :traffic_setion, :favorite_subject, :hobby, :qualification, :club, :instruction_exp, :self_introduction).merge(user_id: current_user.id)
  end


end
