income = 0
deduction = 0

def get_user_input
    puts "Whats your weekly income aftert tax?"
    income = gets.chomp.to_i
    puts "Whats your weekly expenses for rent or morgage repayments?"
    deduction = gets.chomp.to_i
    return income, deduction
end

def subtract
    income, deduction = get_user_input()
    result = income - deduction
    puts result
end

user_input = gets.chomp
    case user_input
    when "1"
      sum()
      result = income - deduction
      puts result
    end