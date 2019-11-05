class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@simpleflights.com'
  layout 'mailer'
end
