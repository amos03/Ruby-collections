#Exercise 0.1: Setting up arrays
colors = ["blue", "grey", "black", "light blue", "silver"]
ages_of_siblings_cousins = [40, 39, 24, 38, 34, 28, 22]
coin_toss_heads =[true, true, false, true, false]
performing_artists=["Ishay Ribo", "Chanan ben Ari", "Idan Raichel"]
colors_symbols=[:"blue", :"grey", :"black", :"light_blue", :"silver"] 

#Exercise 0.2: Setting up hashes
dictionary = {logomachy: "An argument about words.", cryptozoology: "The study of animals whose existence has not yet been proven.", doryphore: "A vexatious critic of others, often focused on minutiae."}
films = [{name: "The Departed", year: 2006}, {name: "Footnote", year: 2011}, {name: "Seven Samurai", year: 1954}]
populations_cities = {Seoul: 97600000, Palo_Alto: 56000, Tekoa: 4076}
friends_ages = {Noah: 40, Chaim: 33, Robert: 38, Jun: 50}

#Exercise 1

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
