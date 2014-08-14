require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/scraper.rb'

get '/' do 
    
    @my_lovin = Game_of_Love.new()
    erb :index


end

