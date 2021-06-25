#Exercise 0.1: Setting up arrays
colors = ["blue", "grey", "black", "light blue", "silver"]
ages_of_siblings_cousins = [40, 39, 24, 38, 34, 28, 22]
coin_toss_heads =[true, true, false, true, false]
performing_artists=["Ishay Ribo", "Chanan ben Ari", "Idan Raichel"]
colors_symbols=[:"blue", :"grey", :"black", :"light_blue", :"silver"] 

#Exercise 0.2: Setting up hashes
dictionary = {logomachy: "an argument about words", cryptozoology: "the study of animals whose existence has not yet been proven", doryphore: "a vexatious critic of others, often focused on minutiae"}
films = {"The Departed": 2006, "Footnote": 2011, "Seven Samurai": 1954}
populations_cities = {Seoul: 97600000, Palo_Alto: 56000, Tekoa: 4076}
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