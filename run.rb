require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative("./models/product.rb")
require_relative("./models/cli.rb")

url = URI.parse("https://hanson.net/store")
response = Net::HTTP.get(url)
noko = Nokogiri::HTML(response)
cards = noko.css(".card").each{|card| Product.new(card)}

# binding.pry
CLI.new
