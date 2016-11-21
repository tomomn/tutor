require 'test_helper'

class IntroduceMailerTest < ActionMailer::TestCase
  test "send_to_student" do
    mail = IntroduceMailer.send_to_student
    assert_equal "Send to student", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
