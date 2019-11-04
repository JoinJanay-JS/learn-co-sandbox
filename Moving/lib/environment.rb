require_relative "Moving/version"

module Moving
  class Error < StandardError; end
  # Your code goes here...
end

require_relative 'Moving/cli'
require 'pry'
require 'HTTParty'
require 'Nokogiri'
require 'Open_uri'
require_relative '../Moving/lib/cli.rb'
