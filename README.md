# Scraping

### What is Scraping?
- Pulling information from the internet that's not accessible via an API
- Often involves pulling data from HTML webpages

### CSS Selectors
- Each HTML element has a few ways we can select it programmatically. This is used for both describing how they should be rendered with CSS, and for manipulation with JavaScript. It can also be used for webscraping.
- CSS Selector Basics:
- - `.` indicates a class
- - `#` indicates an id
- - simply writing out an element tag, like `div`, will give you all `div`s.
- To learn a lot more about selectors, play this game: https://flukeout.github.io/

### Nokogiri
- A Ruby Gem that allows us to parse and read HTML in Ruby
- Nokogiri provides tools for using Ruby to grab an element or set of elements by its CSS Selector.
- - calling `.css(".card")` on a Nokogiri element will give you all child HTML elements with "card" as one of their classes.

### TTY-Prompt
- A gem that provides menus and additional interactivity for the CLI with Ruby
