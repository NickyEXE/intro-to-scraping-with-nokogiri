require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative 'models/scraper.rb'
require_relative 'models/product.rb'

Scraper.new.cards.each{|card| Product.initialize_from_nokogiri(card)}

binding.pry
