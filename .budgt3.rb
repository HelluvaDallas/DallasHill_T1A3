income = 0
rent = 0
groceries = 0
insurance = 0
recreation = 0
utilities = 0
transport = 0
fitness = 0
children = 0


def get_user_input
    puts "What is your weekly income after tax?"
    income = gets.chomp.to_i
    puts "What is your weekly rent or morgage repayments?"
    rent = gets.chomp.to_i
    puts "How much do you spend on groceries each week??"
    groceries = gets.chomp.to_i
    puts "How much do you spend on insurance??"
    insurance = gets.chomp.to_i
    puts "How much do you spend on recreation??"
    recreation = gets.chomp.to_i
    puts "How much do you spend on utilities each week??"
    utilities = gets.chomp.to_i
    puts "How much do you spend on transport each week??"
    transport = gets.chomp.to_i
    puts "How much do you spend on fitness each week??"
    fitness = gets.chomp.to_i
    puts "How much do you spend on children each week??"
    children = gets.chomp.to_i
    return income, rent, groceries, insurance, recreation, utilities, transport, fitness, children
  end
  def subtract
    income, rent, groceries, insurance, recreation, utilities, transport, fitness, children = get_user_input()
    result = income - rent - groceries - insurance - recreation - utilities - transport - fitness - children
    puts result
  end
  quit = false
  until quit do
    puts "Welcome to .budgt, where none of your dreams come true!
    Were here to help you see where all your money is going every week!
    If you want to keep going down this rabbit hole of debt and sorrow 
    type 'yes', if not, type 'quit'!"
    user_input = gets.chomp
    case user_input
    when "yes"
      subtract()
      result = income - rent - groceries - insurance - recreation - utilities - transport - fitness - children
      puts result
    when "q"
      quit = true
    end
  end