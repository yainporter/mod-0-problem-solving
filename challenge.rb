# For each challenge you complete, include comments showing the **overall goal** 
# in your own words, your **pseudocode**, and your **final solution**. 

# 1. Given an array of strings, print only the strings that
# have exactly 4 characters.

# OVERALL GOAL: Print only the strings in an array that have exactly four characters
# PSEUDOCODE: 
# use a conditional statement
# use array.length method
# FINAL SOLUTION:

pets = ["bird", "cat", "fish", "snake", "hamster", "dog"]

pets.each do |pet|
    if pet.length == 4 
     puts pet
    end
end


# 2. Start with an array of strings with a mix of uppercase and lowercase letters. 
# Print every word in all lowercase letters.
# OVERALL GOAL: Print every word in an array with mixed cases in lowercase letters 

# PSEUDOCODE: 
# use the each method to iterate over every element
# print using the downcase method

# FINAL SOLUTION:

mixed_cases = ["HeLlO", "WeLcOmE", "tO", "tHe", "EaRlY", "tWo", "ThOuSaNdS"]

mixed_cases.each do |mixed_case|
    puts mixed_case.downcase
end

# 3. Write a method or function that removes all instances of the letter 
# <strong>s</strong> in a string. The method or function should accept a string as 
# an argument and return the same string with every instance of the letter 
# <strong>s</strong> removed.

# OVERALL GOAL: Write a method that takes a string as an argument, and removes
# every instance of the letter s and then prints it

# PSEUDOCODE:
# Write a method that takes a string argument
# use an if statement to check for s
# use the include? method to check for s
# use the delete method
# return the result

# FINAL SOLUTION:

def remove_s(word)
    @word = word
    if
        word.include?("s")
        puts word.delete("s")
    else 
        puts word

    end
end

remove_s("transforms")

# 4. Start with an array of hobbies. Print out only the words that end in "ing".

# OVERALL GOAL: Print out only the words that end in "ing" from an array of hobbies

# PSEUDOCODE:
# use iteration
# check for "ing" using the include? method with an if statement
# print out words with "ing" ending

# FINAL SOLUTION:

hobbies = ["fishing", "basketball", "soccer", "ice skating", "hockey", "football", "skateboarding", "videogames"]

hobbies.each do |hobby|
    if hobby.include?("ing")
        puts hobby
    end
end

# 5. Start with an array of travel destinations. Print every travel 
# destination in alphabetical order embedded in a sentence using string 
# interpolation. For example, if the destination is "New York City", print 
# something like "The next place I want to visit is New York City!" 

# OVERALL GOAL: Print a sentence using an array in alphabetical order

# PSEUDOCODE:
# sort the array
# use .each for iteration

# FINAL SOLUTION:

destinations = ["Thailand", "Tokyo", "Seoul", "Germany", "London", "Italy", "Iceland"]
destinations.sort!
destinations.each do |destination|
    puts "The next place I want to visit is #{destination}!"
end

# 6. Given a sentence with only lowercase letters, print the same sentence with 
# the first letter of every word capitalized. For example, if you were given 
# "Turing is the best", return "Turing Is The Best" instead!

# OVERALL GOAL: Create a method that capitalizes the first letter of every word in
# a sentence

# PSEUDOCODE:
# define a method
# turn the sentence into an array
# iterate to capitalize the first letter of every word
# return results

# FINAL SOLUTION:

sentence = "this is an attempt to make the sentence work"
words = sentence.split(" ")

words.each do |word|
    first_letter = word.capitalize
    print "#{first_letter} "
end

#NOTES:
# I didn't need to write a method, that way wasn't going to work out because
# I didn't know how to turn the argument into an array properly. Assigning
# the sentence to a variable and doing it that way was much easier to work with

# 7  Write a method or function that determines how much a person will 
# [pay in taxes in the United States](https://www.irs.gov/newsroom/irs-provides
# -tax-inflation-adjustments-for-tax-year-2022) 
# based on their annual income. The method or function should accept a number 
# representing the individual's annual income as an argument and return the amount 
# they will owe in taxes for that year.

# OVERALL GOAL:
# Write a method that will pass through a person's individual come and return
# the amount that they will owe in taxes that year

# PSEUDOCODE:
# define the method
# use if elsif statements
# compare incomes
# take the income, and multiply by their tax bracket, return result

# FINAL SOLUTION:
def income_tax (income)
    @income = income

    if income <= 10275
        owe = income * 0.1
        owe
    elsif income > 10275 && income <= 41775
        owe = income * 0.12
        owe
    elsif income > 41775 && income <= 89075
        owe = income * 0.22
        owe
    elsif income > 89075 && income <= 170050
        owe = income * 0.24
        owe
    elsif income > 170050 && income <= 215950
        owe = income * 0.32
        owe
    else income > 215950
        owe = income * 0.35
        owe
    end
end

income_tax(103542)