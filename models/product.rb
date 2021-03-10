class Product

  attr_reader :link, :image_path, :title, :category, :price

  @@all = []

  def initialize(noko)
    @link = "https://hanson.net" + noko.css(".card-title > a").first.attributes["href"].value
    @image_path = "https://hanson.net"  + noko.css("img").first.attributes["src"].value
    @title = noko.css(".card-title > a").first.children.first.text
    @category = noko.css(".item-category > a").children.first.text.gsub("-", "").strip
    @price = noko.css(".atc-price").children.first ? noko.css(".atc-price").children.first.text.gsub("$ ", "").to_f : 0.0
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.<(number)
    self.all.select{|product| product.price < number}
  end

  def display_details
    puts "*"*15
    puts title
    puts "Category: #{category}"
    puts "Price: #{price}"
    puts "Image: #{image_path}"
    puts "See More Details: #{link}"
    puts "*"*15
  end

  def self.categories
    all.map{|product| product.category}.uniq
  end

  def self.by_category(category)
    Product.all.select{|product| product.category == category}
  end

end
