require 'nokogiri'
require 'open-uri'


class Game_of_Love

  def initialize
    pick_up_html= open('http://www.pickuplinesgalore.com/gameofthrones.html')
    @pick_up_nokogiri= Nokogiri::HTML(pick_up_html)
  end

  #reader

  #writer


  #actions

  def find_and_puts_line
    #gives you an array with all the data about every pickup line
    rand_int = rand(0..32)
    pick_up_line = @pick_up_nokogiri.css("span.style25")
    #.text.split  
    pick_up_line[rand_int].text
    #pick_up_line.join
    #you will need to iterate through this array to pull the text from the pickup lines individually

    # pick_up_line.each {|item| return item.text, " \n"}
    #  pick_up_line
   
  end
  def hover_reveal
    
  end
end

my_line = Game_of_Love.new()
 my_line.find_and_puts_line




