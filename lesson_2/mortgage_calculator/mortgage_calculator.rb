puts "-----------------------------------"
puts "Welcome to the Mortgage Calculator!"
puts "-----------------------------------"

def prompt(message)
  puts "==> #{message}"
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  (/^\d+$/.match(input) || float?(input)) && input.to_i > 0
end

prompt("What is your name?")
name = ""
loop do
  name = gets.chomp

  name.empty? ? puts("Please enter a valid name.") : break
end

prompt("Hi, #{name}!")

loop do
  prompt("What is the loan amount?")
  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    break if valid_number?(loan_amount)

    prompt("Please enter a valid number for your loan amount.")
  end

  prompt("What is the loan duration in months?")
  duration_in_months = ''
  loop do
    duration_in_months = gets.chomp

    break if valid_number?(duration_in_months)

    prompt("Please enter a valid number of months.")
  end

  prompt("What is the Annual Percentage Rate (APR)?")
  prompt("For example, if the APR is 5%, enter '5'.")
  annual_percentage_rate = ''
  loop do
    annual_percentage_rate = gets.chomp

    break if valid_number?(annual_percentage_rate)

    prompt("Please enter a valid percentage rate. Do not include percent sign.")
  end

  monthly_rate = annual_percentage_rate.to_f / 100 / 12
  monthly_payment = loan_amount.to_i *
                    (monthly_rate / 
                    (1 - (1 + monthly_rate)**(-duration_in_months.to_i)))
  prompt("Your monthly payment will be $#{monthly_payment.round(2)}.")

  prompt("Would you like to do another calculation? (Enter 'yes' or 'y')")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end
prompt("Thank you for using the Mortgage Calculator!")
