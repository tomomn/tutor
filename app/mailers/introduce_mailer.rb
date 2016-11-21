class IntroduceMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.introduce_mailer.send_to_student.subject
  #
  def send_to_student(student, teacher)
    @student = student
    @teacher = teacher
    mail to:      student.email,
         subject: '【家庭教師のTs Reach】先生からの連絡が届きました。'
  end

  def send_to_teacher(teacher, student)
    @teacher = teacher
    @student = student
    mail to:      teacher.email,
         subject: '【家庭教師のTs Reach】親御様からの連絡が届きました。'
  end


end
