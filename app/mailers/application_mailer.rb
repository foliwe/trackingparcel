class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@tracking.com'
  layout 'mailer'
end
