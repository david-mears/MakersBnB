class Availability < ActiveRecord::Base
  validates :space_id, presence: true
  validates :user_id, presence: false
  validates :date, presence: true

  def self.populate_available_dates(space_id, start_date, end_date)
    dates_array = DateRange.range(start_date, end_date)
    dates_array.each do |date|
      Availability.create(space_id: space_id, date: date)
    end
  end

end
