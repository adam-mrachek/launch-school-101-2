def after_midnight(time)
  hours, minutes = time.split(':').map { |str| str.to_i }
  (minutes + hours * 60) % 1440
end

def before_midnight(time)
  minutes = 1440 - after_midnight(time)
  minutes = 0 if minutes == 1440
  minutes
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')