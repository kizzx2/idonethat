class DoneThatMailer < ActionMailer::Base
  default from: Settings[:idonethat][:from_email]
  layout 'application'

  def prompt(to_member)
    mail to: to_member.email, subject: "iDoneThat: Prompt"
  end

  def digest
    mail subject: "iDoneThat: Digest #{Time.zone.today}"
  end
end
