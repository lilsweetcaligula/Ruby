def sort_by_language(arr)
  arr.sort_by { |entry| [entry["language"], entry["first_name"]] }
end
