def get_los_angeles_points(results)
  results.find_all { |entry|
    team_name = entry[0]  
    words     = team_name.split
    
    team_name.start_with?("Los Angeles") && words.size == 3 && words.all? { |word|
      word == word.capitalize && word =~ /^[A-Z][a-z]*$/
    }
  }
  .collect { |entry|
    entry.last
         .partition(":")
         .first
         .to_i
  }
  .reduce(0, :+)
end
