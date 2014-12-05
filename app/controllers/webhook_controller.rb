class WebhookController < ApplicationController
  def done
    mail = {
      to: params[:envelope][:to],
      from: params[:envelope][:from],
      subject: params[:headers]['Subject'],
      body: params[:html] || params[:plain]
    }

    m = Member.where(email: mail[:from]).first
    fail if m.nil?

    Entry.create!(member: m, body: Sanitize.clean(mail[:body]))

    head :ok
  end
end
