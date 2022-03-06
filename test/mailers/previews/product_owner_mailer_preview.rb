# Preview all emails at http://localhost:3000/rails/mailers/product_owner_mailer
class ProductOwnerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/product_owner_mailer/incident
  def incident
    incident = Incident.last
    ProductOwnerMailer.with(incident: incident).incident
  end

end
