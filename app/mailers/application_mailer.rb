class ContactMailer < ApplicationMailer
  default to: 'seu_email@dominio.com'

  def contact_email(contact)
    @contact = contact
    mail(from: @contact.email, subject: 'Mensagem de Contato')
  end
end
