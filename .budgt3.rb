require "colorize"
require "tty-font"
font = TTY::Font.new(:doom)

# defining the prompts for user input to gain knowledge on weekly income and weekly deductions
def get_user_input
  puts "
  What is your weekly income after tax?
  This can be pay from a job or even rent
  from a rental property you own
  Please enter a number.".colorize(:light_blue)
  income = gets.chomp.to_f
  puts "
  What is your weekly rent or morgage repayments? Please enter a number.".colorize(:light_blue)
  rent = gets.chomp.to_f
  puts "
  How much do you spend on groceries each week? Please enter a number.".colorize(:light_blue)
  groceries = gets.chomp.to_f
  puts "
  How much do you spend on insurance?
  Such as health insurance or pet 
  insurance.
  Please enter a number.".colorize(:light_blue)
  insurance = gets.chomp.to_f
  puts "
  How much do you spend on recreation weekly?
  This can include going to the movies,
  having beers, getting a coffee in the
  morning and also subscriptions such as
  Netflix, Stan or Amazon Prime.
  Please enter a number.".colorize(:light_blue)
  recreation = gets.chomp.to_f
  puts "
  How much do you spend on utilities each week?
  utilities include Gas and Electricity, internet and
  phone bills.
  Please enter a number.".colorize(:light_blue)
  utilities = gets.chomp.to_f
  puts "
  How much do you spend on transport each week?
  some examples are public transport fees or
  petrol for the car.
  Please enter a number.".colorize(:light_blue)
  transport = gets.chomp.to_f
  puts "
  How much do you spend on fitness each week?
  This refers to gym memberships or even the
  purchase of protein powder and shakes.
  Please enter a number.".colorize(:light_blue)
  fitness = gets.chomp.to_f
  puts "
  How much do you spend on your children each week?
  Most of your childrens expenses will be included in
  the other categories, but this section is for extras.
  Such as, excursion fees.
  Please enter a number.".colorize(:light_blue)
  children = gets.chomp.to_f
  return income, rent, groceries, insurance, recreation, utilities, transport, fitness, children
end

# defining values
def subtract(income, rent, groceries, insurance, recreation, utilities, transport, fitness, children)
  
  # result equals income minus all other deductions
  result = income - rent - groceries - insurance - recreation - utilities - transport - fitness - children
  puts "
  You are currently saving #{((result / income) * 100).truncate(2)}% of your income,
  which leaves $#{result} for savings!".colorize(:light_cyan)
  
  # if income minus all other deductions leaves less than 0% advise of this option
  # truncate(2) forces percentage float to only show up to two decimal places
  if ((result / income) * 100).truncate(2) <= 0
    puts "
    Oh no. Looks like you arent saving anything...
    You might even be spending more than you earn!!
    
    Have you heard about the 50/20/30 Rule of Budgeting?
    50% of your income is allocated for Needs,
    20% of your income is allocated for savings, and
    30% of your income is for Wants!
    
    You need to re-evaluate where your moeny is going and thats why we're here!
    Let's have another go and see if we improve some things".colorize(:light_red)

  # if income minus all other deductions leaves less than 20% advise of this option
  # truncate(2) forces percentage float to only show up to two decimal places
  elsif ((result / income) * 100).truncate(2) < 20
    puts "
    Saving less than 20% of your weekly income is not ideal,
    but at least you're putting something away!
    
    Have you heard about the 50/20/30 Rule of Budgeting?
    50% of your income is allocated for Needs,
    20% of your income is allocated for savings, and
    30% of your income is for Wants!
    
    Maybe re-evaluate your Wants and try again".colorize(:light_yellow)

  # if income minus all other deductions equals 20% advise of this option
  # truncate(2) forces percentage float to only show up to two decimal places
  elsif ((result / income) * 100).truncate(2) == 20
    puts "
    20% of your weekly income is perfect!
    Its the recommmended amount of income to put away each week!
    
    Let's go again to see if we can save even more money!".colorize(:light_green)

  # if income minus all other deductions equals 20% or more advise of this option
  else
    puts "
    Saving more than 20% of your weekly income is great!
    You're exceeding the recommended amount. Keep up the good work!
    
    You're already crushing it, but let's have another go and see if we can save even more!".colorize(:light_green)
  end
end

# will continue to loop until user choose to quit. quiting is allowed at the beginning of each round.
quit = false
until quit do
  puts font.write("Welcome to Budgt!").colorize(:light_magenta)
  puts "
  where the missing 'e' isn't a spelling error!
  We're here to help you see where all your money is going every week!
  
  If you want to keep going down this rabbit hole of debt and sorrow
  type 'y' followed by enter, if not, type 'q' followed by enter!
  ".colorize(:light_green)
  user_input = gets.chomp
    case user_input
    when "y"
      income, rent, groceries, insurance, recreation, utilities, transport, fitness, children = get_user_input()
      subtract(income, rent, groceries, insurance, recreation, utilities, transport, fitness, children)
      result = income - rent - groceries - insurance - recreation - utilities - transport - fitness - children

    when "q"
      quit = true
    end
  end