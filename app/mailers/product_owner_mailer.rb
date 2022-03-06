class ProductOwnerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_owner_mailer.incident.subject
  #
  def incident
    @incident = params[:incident]
    mail to: ENV['MAIL_TO'], subject: @incident.subject
  end
end
