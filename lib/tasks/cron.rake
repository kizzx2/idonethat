namespace :cron do
  task :prompt => :environment do
    Member.all.each do |m|
      DoneThatMailer.prompt(m).deliver
    end
  end

  task :digest => :environment do
    Member.all.each do |m|
      m.idle_days = m.yesterday_entries.exists? ? 0 : m.idle_days + 1
      m.save!
    end

    mail = DoneThatMailer.digest

    Member.all.each do |m|
      mail.to = m.email
      mail.deliver
    end
  end
end
