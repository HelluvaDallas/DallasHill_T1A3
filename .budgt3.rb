# class Budget
#   attr_accessor :income, :rent, :groceries, :insurance, :recreation,
#   :utilities, :transport, :fitness, :children,
#   def initialize()
#   @income = 0
#   @rent = 0
#   @groceries = 0
#   @insurance = 0
#   @recreation = 0
#   @utilities = 0
#   @transport = 0
#   @fitness = 0
#   @children = 0
#   end
# end
require "colorize"
# font = TTY::Font.new(:big_words)

def get_user_input
  puts "
  What is your weekly income after tax?".colorize(:light_blue)
  income = gets.chomp.to_f
  puts "
  What is your weekly rent or morgage repayments?".colorize(:light_blue)
  rent = gets.chomp.to_f
  puts "
  How much do you spend on groceries each week?".colorize(:light_blue)
  groceries = gets.chomp.to_f
  puts "
  How much do you spend on insurance?".colorize(:light_blue)
  insurance = gets.chomp.to_f
  puts "
  How much do you spend on recreation?".colorize(:light_blue)
  recreation = gets.chomp.to_f
  puts "
  How much do you spend on utilities each week?".colorize(:light_blue)
  utilities = gets.chomp.to_f
  puts "
  How much do you spend on transport each week?".colorize(:light_blue)
  transport = gets.chomp.to_f
  puts "
  How much do you spend on fitness each week?".colorize(:light_blue)
  fitness = gets.chomp.to_f
  puts "
  How much do you spend on children each week?".colorize(:light_blue)
  children = gets.chomp.to_f
  return income, rent, groceries, insurance, recreation, utilities, transport, fitness, children
end


def subtract(income, rent, groceries, insurance, recreation, utilities, transport, fitness, children)
  
  result = income - rent - groceries - insurance - recreation - utilities - transport - fitness - children
  puts "
  You are currently saving #{((result / income) * 100).truncate(2)}% of your income,
  which leaves $#{result} for savings!".colorize(:light_blue)

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
  elsif ((result / income) * 100).truncate(2) < 20
    puts "
    Saving less than 20% of your weekly income is not ideal,
    but at least you're putting something away!

    Have you heard about the 50/20/30 Rule of Budgeting?
    50% of your income is allocated for Needs,
    20% of your income is allocated for savings, and
    30% of your income is for Wants!

    Maybe re-evaluate your Wants and try again".colorize(:light_yellow)
  elsif ((result / income) * 100).truncate(2) == 20
    puts "
    20% of your weekly income is perfect!
    Its the recommmended amount of income to put away each week!
    
    Let's go again to see if we can save even more money!".colorize(:green)
  else
    puts "
    Saving more than 20% of your weekly income is great!
    You're exceeding the recommended amount. Keep up the good work!
    
    You're already crushing it, but let's have another go and see if we can save even more!".colorize(:green)
  end
end



quit = false
until quit do
  puts "
    Welcome to Budgt, where the missing 'e' isn't a spelling error!
    We're here to help you see where all your money is going every week!
  
    If you want to keep going down this rabbit hole of debt and sorrow
    type 'y' followed by enter, if not, type 'q' followed by enter!
    ".colorize(:green)
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