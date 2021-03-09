class Scraper

  attr_reader :cards

  def initialize()
    url = URI.parse("https://hanson.net/store")
    html = Net::HTTP.get(url)
    @noko = Nokogiri::HTML(html)
    @cards = @noko.css(".card")
  end


  def self.full_url_from_relative_path(path)
    "https://www.hanson.net" + path
  end


end
