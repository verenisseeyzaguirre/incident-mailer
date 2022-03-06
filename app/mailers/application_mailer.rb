class ApplicationMailer < ActionMailer::Base
  default from: ENV['GMAIL_ADDRESS']
  layout 'mjml_mailer'
end
