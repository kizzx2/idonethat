require 'spec_helper'

describe DoneThatMailer do
  it 'digests' do
    8.times { FactoryGirl.create(:member) }
    Member.all.each do |m|
      rand(0..2).times do
        FactoryGirl.create(:entry, member: m, created_at: 1.day.ago)
      end
    end

    mail = DoneThatMailer.digest
    body = mail.body.encoded

    Member.all.each do |m|
      expect(body).to match(m.email)
      expect(body).to match(m.name)
    end
  end
end
