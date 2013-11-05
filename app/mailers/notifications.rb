class Notifications < ActionMailer::Base
  default from: "no_reply@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_pledge.subject
  #
  def new_pledge
    @greeting = "Hi"

    mail to: "to@example.org"
  end
  
  def new_meet(meet, host)
    @greeting = "Hello " + host.name #Host.where(host_id: meet.host_id).name.to_s
    @id = meet.id
    
    mail to: host.email
  end
end
