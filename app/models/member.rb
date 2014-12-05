class Member < ActiveRecord::Base
  def yesterday_entries
    Entry.where(
      member_id: self.id,
      created_at: 1.day.ago.beginning_of_day..1.day.ago.end_of_day)
  end
end
