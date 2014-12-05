class DoneThatMailer < ActionMailer::Base
  default from: Settings[:idonethat][:from_email]
  layout 'application'

  def prompt(to_member)
    mail to: to_member.email
  end

  def digest
    mail
  end
end
