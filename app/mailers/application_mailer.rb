class ApplicationMailer < ActionMailer::Base
  default from:     "家庭教師の●●",
          bcc:      "tomomnezweb@gmail.com",
          reply_to: "test@gmail.com"
  layout 'mailer'
end
