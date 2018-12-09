# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'hi@hello.com'
  layout 'mailer'
end
