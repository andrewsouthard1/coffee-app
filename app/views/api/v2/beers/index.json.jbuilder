json.array! @beers.each do |beer|
  json.id beer.id
  json.name beer.name
  json.hoppzy beer.hop
  json.ibu beer.ibu
end