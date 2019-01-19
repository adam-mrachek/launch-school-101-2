DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i
  p degrees
  minutes = (angle % degrees) * 60
  seconds = (minutes % minutes.to_i) * 60
  "#{degrees}#{DEGREE}#{minutes.to_i}#{DEGREE}#{seconds.to_i}#{DEGREE}"
end

# p dms(30)
p dms(76.73)
# p dms(254.6)
# p dms(93.034773)
# # p dms(0)
# p dms(360)