#Exercise 0.1: Setting up arrays
colors = ["blue", "grey", "black", "light blue", "silver"]
color_upper_case = ["Blue", "Grey", "Black", "Light blue", "Silver"]
ages_of_siblings_cousins = [40, 39, 24, 38, 34, 28, 22]
coin_toss_heads =[true, true, false, true, false]
ages_array_with_only_three = [24, 34, 40]
performing_artists=["Ishay Ribo", "Chanan ben Ari", "Idan Raichel"]
colors_symbols=[:"blue", :"grey", :"black", :"light_blue", :"silver"] 

#Exercise 0.2: Setting up hashes
dictionary = {logomachy: "an argument about words", cryptozoology: "the study of animals whose existence has not yet been proven", doryphore: "a vexatious critic of others, often focused on minutiae"}
films = {"The Departed": 2006, "Footnote": 2011, "Seven Samurai": 1954}
populations_cities = {Seoul: 97600000, "Palo Alto": 56000, Tekoa: 4076}
friends_ages = {Noah: 40, Chaim: 33, Robert: 38, Jun: 50}

#Exercise 1.1 - Displaying Array Items

def print_array_first_item (array_name)
    p array_name[0]
end

def print_array_last_item (array_name)
    p array_name[-1]
end

def print_array_first_two_items (array_name)
    # puts "#{array_name[0]} #{array_name[1]}"
    p array_name[0..1]
end

def print_array_last_two_items (array_name)
    p array_name[-2..-1]
    # puts "#{array_name[-1]} #{array_name[-2]}"
end

puts "---------------------------"
puts "First Item of Each Array:"
print_array_first_item(colors)
print_array_first_item(ages_of_siblings_cousins)
print_array_first_item(coin_toss_heads)
print_array_first_item(performing_artists)
print_array_first_item(colors_symbols)
puts "---------------------------"

puts "Last Item of Each Array:"
print_array_last_item(colors)
print_array_last_item(ages_of_siblings_cousins)
print_array_last_item(coin_toss_heads)
print_array_last_item(performing_artists)
print_array_last_item(colors_symbols)
puts "---------------------------"

puts "First Two Items of Each Array:"

print_array_first_two_items(colors)
print_array_first_two_items(ages_of_siblings_cousins)
print_array_first_two_items(coin_toss_heads)
print_array_first_two_items(performing_artists)
print_array_first_two_items(colors_symbols)
puts "---------------------------"

puts "Last Two Items of Each Array:"
print_array_last_two_items(colors)
print_array_last_two_items(ages_of_siblings_cousins)
print_array_last_two_items(coin_toss_heads)
print_array_last_two_items(performing_artists)
print_array_last_two_items(colors_symbols)
puts "---------------------------"

# QUESTION for SREE AND ELVIS:
# Trying to automate so that I don't have to manually enter method followed by array name for each array separately
# I want my method to take as argument each array in my list of array names
# problem is that array stores each name as a string and the output therefore seems to have quotation marks
#
# names_of_my_arrays = ["colors", "ages_of_siblings_cousins", "coin_toss_heads", "performing_artists", "colors_symbols"]
#
# def print_all_my_arrays_first_items (names_array)
#         names_array.each do |name_of_array|
#         print_array_first_item (names_array[name_of_array])
#     end
# end

# print_all_my_arrays_first_items(names_of_my_arrays)

#Exercise 1.2 - Displaying Hash Values
puts "Display One Stored Value From Each Hash:"
p dictionary[:logomachy]
p films[:"The Departed"]
p populations_cities[:Tekoa]
p friends_ages[:Noah]
puts "---------------------------"

#Exercise 2

#method for reversing array
def reverse_array (array)
    return array.reverse
end

#method for sorting array
def sort_array (array)
    return array.sort
end

puts "Print arrays in reverse"
p reverse_array (colors)
p reverse_array (ages_of_siblings_cousins)
p reverse_array (coin_toss_heads)
p reverse_array(performing_artists)
p reverse_array (colors_symbols)
puts "---------------------------"

puts "Print sorted arrays"
p sort_array (colors)
p sort_array (ages_of_siblings_cousins)
# p sort_array (coin_toss_heads)
p sort_array (performing_artists)
 p sort_array (colors_symbols)
puts "---------------------------"

puts "Sort array, reverse, and print"
p reverse_array (sort_array(colors))
p reverse_array (sort_array(ages_of_siblings_cousins))
p reverse_array (sort_array(performing_artists))
p reverse_array (sort_array(colors_symbols))
puts "---------------------------"

#Exercise 3
puts "3.1 Print out a sentence using each item in the array."

def every_item_in_array (array, sentence_string)
    array.each do |item|
        puts "#{sentence_string} #{item}."
    end
puts "---------------------------"
end

every_item_in_array(colors, "My favorite color is")
every_item_in_array(ages_of_siblings_cousins, "My favorite cousin is")
every_item_in_array(coin_toss_heads, "True or false: The coin I tossed came up heads.")
every_item_in_array(performing_artists, "I really like the musician")
every_item_in_array(colors_symbols, "My favorite color symbol is")

puts "3.2 Print out a sentence using each key and value from your hash."

def every_item_in_hash (hash, sentence_string1, sentence_string2)
    hash.each do |k,v|
        puts "#{sentence_string1} #{k} #{sentence_string2} #{v}."
    end
puts "---------------------------"
end

every_item_in_hash(dictionary, "The word", "means")
every_item_in_hash(films, "I like the film", "which came out in")
every_item_in_hash(populations_cities, "The city", "has a population of")
every_item_in_hash(friends_ages, "My friend", "is")

puts "4.1 Append an element to each one of your arrays."

def append_to_array (array, item)
    puts "Adding \"#{item}\" to array #{array}"
    array.push(item)
    p array
puts "---------------------------"
end

append_to_array(colors, "tkhelet")
append_to_array(ages_of_siblings_cousins, 18)
append_to_array(coin_toss_heads, false)
append_to_array(performing_artists, "Shlomi Shabbat")
append_to_array(colors_symbols, :tkhelet)

puts "4.1 Add a new key-value pair to each one of your hashes."
def add_key_value_to_hash (hash, name, key, value)
    puts "Adding \"#{key}\" and \"#{value}\" to your #{name} hash."
    hash[:"#{key}"]=value
    p hash
    puts "---------------------------"
end

add_key_value_to_hash(dictionary, "Dictionary",:prevaricate, "to speak or act evasively")
add_key_value_to_hash(films, "Film", :Rashomon, 1950)
add_key_value_to_hash(populations_cities, "City Populations", "Shiraz", 1566000)
add_key_value_to_hash(friends_ages, "Friends' Ages", "Batya", 39)

#Exercise 5
# Make a new hash that contains a list of movies for each year. Each list of movies should be an array. Below is some data you can use.
# 1999: The Matrix, Star Wars: Episode 1, The Mummy
# 2009: Avatar, Star Trek, District 9
# 2019: How to Train Your Dragon 3, Toy Story 4, Star Wars: Episode 9
puts "Hash of Films by Year"

p films_by_year={1995=> ["The Usual Suspects", "Appolo 13","12 Monkeys", "Blue in the Face", "Before Sunrise", "Le Confessionnal", "Ulysses' Gaze"],
 1999=>["The Matrix", "Being John Malkovich", "Star Wars: Episode 1"]}
 puts "---------------------------"

 #Array of buttons on phone by row
 puts "Phone buttons in an array"
 phone=[[1, 2, 3],[4,5,6],[7,8,9],["*",0,"#"]]
 p phone
 puts "---------------------------"

 #Countries
 puts "Array of Countries with Hashes Inside"
p countries=[{name: "Malta", continent: "Europe", is_island: true}, {name: "Botswana", continent: "Africa", is_island: false}, {name: "Laos", continent: "Asia", is_island: false}]
puts "---------------------------"

#Exercise 6 - More Iteration
puts "Output the message 'I will not skateboard in the halls' twenty times."

counter=0
while counter < 20
    counter +=1 
    puts "I will not skateboard in the halls"
end
puts "---------------------------"

puts "Array of the same message:"
p skateboard_array = Array.new(20, "I will not skateboard in the halls")

puts "---------------------------"
puts "Add numbers 1 to 50 to array"
counter =0
fifty_numbers_array = Array.new
while counter <50
    counter +=1
    fifty_numbers_array.push(counter) 
end
p fifty_numbers_array
puts "---------------------------"

puts "Add up all the numbers in the 1-50 array:"

puts "Using .sum as control: #{fifty_numbers_array.sum[0..-1]}."

total=0
fifty_numbers_array.each do |number|
    total +=number 
end

puts "Using .each do loop: #{total}."
puts "---------------------------"

puts "Exercise 6.5: Create a new array with three of each number from 1 to 50:"

counter = 0
fifty_triple_numbers_array=Array.new
while counter <50
    counter +=1
    fifty_triple_numbers_array.push(counter,counter,counter)
end
p fifty_triple_numbers_array
puts "---------------------------"

#Exercise 7 Stretch
#Exercise 7.1
puts "Make a new array that consists of all the elements of your fav_colours and fav_artists arrays. Then sort the array and output it."

colors_artists = color_upper_case + performing_artists
p colors_artists.sort

puts "When sorting elements that are mix of capitalized first letter and lower case, sort will sort upper case elements separately from lower case."

#Exercise 7.2
# Using the array of ages and the array of favourite artists, output a message for each pair of items

performing_artists.each do |artist|
    p performing_artists[artist]
end

# ages_array_with_only_three
