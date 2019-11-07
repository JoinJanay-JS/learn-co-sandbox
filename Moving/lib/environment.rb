require_relative "Moving/version"
require_relative 'Moving/cli'
require_relative 'Moving/scraper'

module Moving
  class Error < StandardError; end
  # Your code goes here...
end

require 'pry'
require 'HTTParty'
require 'Nokogiri'
require 'Open_uri'

