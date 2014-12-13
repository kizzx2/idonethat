class Member < ActiveRecord::Base
  has_many :entries

  def yesterday_entries
    Entry.where(
      member_id: self.id,
      created_at: (1.day.ago.beginning_of_day + 12.hours)..Time.zone.now)
  end
end
