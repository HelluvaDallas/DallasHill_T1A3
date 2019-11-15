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
  income = gets.chomp.to_f
  puts "What is your weekly rent or morgage repayments?"
  rent = gets.chomp.to_f
  puts "How much do you spend on groceries each week??"
  groceries = gets.chomp.to_f
  puts "How much do you spend on insurance??"
  insurance = gets.chomp.to_f
  puts "How much do you spend on recreation??"
  recreation = gets.chomp.to_f
  puts "How much do you spend on utilities each week??"
  utilities = gets.chomp.to_f
  puts "How much do you spend on transport each week??"
  transport = gets.chomp.to_f
  puts "How much do you spend on fitness each week??"
  fitness = gets.chomp.to_f
  puts "How much do you spend on children each week??"
  children = gets.chomp.to_f
  return income, rent, groceries, insurance, recreation, utilities, transport, fitness, children
end
def subtract
  income, rent, groceries, insurance, recreation, utilities, transport, fitness, children = get_user_input()
  result = income - rent - groceries - insurance - recreation - utilities - transport - fitness - children
  puts "You are currently saving #{((result / income) * 100).truncate(2)}% of your income,
  which leaves $#{result} for savings!"
  
if ((result / income) * 100).truncate(2) <= 0
  puts "Looks like you arent saving anything. You might even be spending more than you earn!
  Have you heard about the 50/20/30 Rule of Budgeting?
50% of your income is allocated for Needs,
20% of your income is allocated for savings, and
30% of your income is for Wants!
Stick to this rule and you'll be considered a
good little Aussie Saver!"
elsif ((result / income) * 100).truncate(2) < 20
    puts "You're currently saving less than 20% of your weekly income.
    Have you heard about the 50/20/30 Rule of Budgeting?
  50% of your income is allocated for Needs,
  20% of your income is allocated for savings, and
  30% of your income is for Wants!
  Stick to this rule and you'll be considered a
  good little Aussie Saver!"
  elsif ((result / income) * 100).truncate(2) == 20
    puts "you are saving 20% of your weekly income, seems like you're right on track!"
  else
    puts "Looks like you're saving more than 20% of your weekly income! You're crushing it, keep up the good work!"
  end
end
quit = false
  puts "Welcome to .budgt, where none of your dreams come true!
  We're here to help you see where all your money is going every week!
  If you want to keep going down this rabbit hole of debt and sorrow 
  type 'yes', if not, type 'quit'!"
  user_input = gets.chomp
    case user_input
    when "yes"
      subtract()
      result = income - rent - groceries - insurance - recreation - utilities - transport - fitness - children
    when "q"
      quit = true
    end