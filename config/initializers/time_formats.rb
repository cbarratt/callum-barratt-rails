Date::DATE_FORMATS[:readable] = lambda { |time| time.strftime("#{time.day.ordinalize} %B %Y") }
Time::DATE_FORMATS[:weight] = lambda { |time| time.strftime("#{time.day.ordinalize} %B %Y %I:%M %p") }
