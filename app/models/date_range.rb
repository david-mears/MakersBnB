class DateRange

  DATE_FORMAT = "%d/%m/%y"

  def self.range(start_date, end_date)
    range = (format_date(start_date)..format_date(end_date)).map { |date| 
      date.strftime(DATE_FORMAT) 
    }
    range.slice!(-1)
    range
  end

  private_class_method

  def self.format_date(date)
    Date::strptime(date, DATE_FORMAT)
  end

end
