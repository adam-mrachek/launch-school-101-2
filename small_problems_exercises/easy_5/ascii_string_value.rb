def ascii_value(str)
  value = 0
  str.split('').each { |char| value += char.ord }
  value
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')