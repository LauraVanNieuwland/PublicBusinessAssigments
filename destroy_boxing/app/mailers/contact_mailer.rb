class ContactMailer < ApplicationMailer
  default from: 'info@ljm-webdevelopment.nl'
  

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #
  def message
    mail(
      subject: 'Hello from Laura',
      to: 'info@ljm-webdevelopment.nl',
      from: 'info@ljm-webdevelopment.nl',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens: 'true',
      message_stream: 'outbound')
  end
  # OLD
  # def message
    
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
end
