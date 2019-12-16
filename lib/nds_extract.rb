require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0    
  movie_count = 0 #list of each movies for each director; second array
  while movie_count < director_data[:movies].length do
    gross += director_data[:movies][movie_count][:worldwide_gross]
    movie_count += 1
  end
  result[director] = gross
end




  result = {}
  director_count = 0 #list of directors; first Array
  while director_count < nds.length do
    director = nds[director_count][:name]
    gross = 0    
    movie_count = 0 #list of each movies for each director; second array
    while movie_count < nds[director_count][:movies].length do
      gross += nds[director_count][:movies][movie_count][:worldwide_gross]
      movie_count += 1
    end
    result[director] = gross
    director_count += 1
  end
#  puts result
  return result
end