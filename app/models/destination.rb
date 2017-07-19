class Destination < ApplicationRecord
  scope :search, -> (city_parameter) { where("city like ?", "%#{city_parameter}%")}
  scope :search_country, -> (country_parameter) { where("country like ?", "%#{country_parameter}%")}
  scope :popular_destinations, -> { where("rating >?", 3)}
end
