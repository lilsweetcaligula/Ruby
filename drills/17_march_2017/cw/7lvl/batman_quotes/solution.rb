class BatmanQuotes
  def self.get_quote(quotes, hero)
    "#{{ 
      "R" => "Robin", "B" => "Batman", "J" => "Joker" 
    }[hero[0]]}: #{quotes[hero[/[\d]+/].to_i]}"
  end
end
