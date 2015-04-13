Date::DATE_FORMATS[:readable] = lambda { |time| time.strftime("#{time.day.ordinalize} %B %Y") }
