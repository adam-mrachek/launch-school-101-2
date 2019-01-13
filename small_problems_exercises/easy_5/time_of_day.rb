# First attempt
# def time_of_day(minutes)
#   hour = '%02d'%(minutes / 60 % 24)
#   minutes = '%02d'%(minutes % 60)
#   "#{hour}:#{minutes}"
# end

def time_of_day(minutes)
  hours, mins = minutes.divmod(60)
  hours %= 24

  format("%02d:%02d", hours, mins)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)