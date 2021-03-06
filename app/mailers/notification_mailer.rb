class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.create_project.subject
  #
  def create_project(project)
    @project = project
    @greeting = "Bonjour XXXX_USER, nous avons bien reçu votre création de projet nous vous recontactons rapidement"
    mail( to: "zref78@gmail.com", :subject => '[TEST] - Multi-Emails ??? création de projet')
  end
end
