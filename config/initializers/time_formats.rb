Date::DATE_FORMATS[:readable] = -> (time) { time.strftime("#{time.day.ordinalize} %B %Y") }
Time::DATE_FORMATS[:weight] = -> (time) { time.strftime("#{time.day.ordinalize} %B %Y %I:%M %p") }
