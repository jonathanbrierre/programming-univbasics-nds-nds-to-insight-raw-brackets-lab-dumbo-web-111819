require "pry"
require "pp"
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp nds
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
 
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  # 
  #
  # Be sure to return the result at the end!
  
  results = {}
  director_index = 0 
  
  while director_index < directors_database.count do
    movie_index = 0 
    gross_total = 0 
    while movie_index < directors_database[director_index][:movies].length do
      gross_total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end
    results[directors_database[director_index][:name]] = gross_total
    director_index += 1 
  end
  results
  
  
end
