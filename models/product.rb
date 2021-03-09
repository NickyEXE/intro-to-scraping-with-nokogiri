class Product

  attr_accessor :product_type, :name, :price, :image, :link

  @@all = []

  def self.initialize_from_nokogiri(card)
    product = self.new
    product.name = card.css(".card-title").css("a").children.first.text
    link_relative_path = card.css(".card-title").css("a").first.attributes["href"].value
    product.link = Scraper.full_url_from_relative_path(link_relative_path)
    product.price = card.css(".atc-price").first && card.css(".atc-price").first.children.first.text.delete_prefix("$ ")
    image_relative_path = card.css("img").first["src"]
    product.image = Scraper.full_url_from_relative_path(image_relative_path)
    product.product_type = card.css(".item-category > a").first.children.first.text.delete_suffix(" -").delete_prefix("- ")
    @@all << product
  end

  def self.all
    @@all
  end



end
