def cleanup(str)
  str.gsub!(/[^a-zA-z]+/, ' ')
end

  
p cleanup("---what's my +*& line?") == ' what s my line '