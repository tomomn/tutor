# Preview all emails at http://localhost:3000/rails/mailers/introduce_mailer
class IntroduceMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/introduce_mailer/send_to_student
  def send_to_student
    IntroduceMailer.send_to_student
  end

end
