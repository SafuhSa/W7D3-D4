json.pokemon do
  json.extract! @pokemon, :name, :id, :attack, :defense, :moves, :poke_type
  json.image_url asset_path(@pokemon.image_url)
end

json.items do
  # debugger
  @pokemon.items.each do |item|
    json.set! item.id do
      json.extract! item, :id, :name, :pokemon_id, :price, :happiness
      json.image_url asset_path(item.image_url)
    end
  end
end