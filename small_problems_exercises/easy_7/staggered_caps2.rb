def staggered_case(str)
  current_case = 'uppercase'
  result = ""
  str.chars.each do |char|
    if char =~ /[a-zA-Z]/ && current_case == 'uppercase'
      result += char.upcase
      current_case = 'downcase'
    elsif char =~ /[a-zA-Z]/ && current_case == 'downcase'
      result += char.downcase
      current_case = 'uppercase'
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'