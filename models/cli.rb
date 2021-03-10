class CLI

  def initialize
    welcome
    main_menu
  end

  def welcome
    puts "WELCOME TO THE OFFICIAL HANSON ONLINE STORE, NOW UNOFFICIALLY IN THE CLI"
  end

  def main_menu
    puts "Would you like to:"
    puts "  1. SEE PRODUCTS UNDER $40"
    puts "  2. SEE ALL ACCESSORIES"
    puts "  3. SEE ALL APPAREL"
    puts "  4. EXIT"
    puts "(Enter a number)"
    input = gets.strip
    case input
    when "1"
      products_menu(Product < 40)
    when "2"
      products_menu(Product.by_category("Accessories"))
    when "3"
      products_menu(Product.by_category("Apparel"))
    when "4"
      exit
    else
      puts "I didn't get that. Can you try again?"
      main_menu
    end
  end

  def products_menu(products)
    products.each_with_index do |product, index|
      puts "#{index + 1}. #{product.title}"
    end
    puts "Which item would you like to view? Enter a number or write EXIT"
    input = gets.strip
    if input == "EXIT"
      exit
    elsif input.to_i == 0
      puts "I didn't get that!"
      products_menu
    else
      products[input.to_i - 1].display_details
      main_menu
    end
  end

  def exit
    puts "Thanks for coming."
  end

end
