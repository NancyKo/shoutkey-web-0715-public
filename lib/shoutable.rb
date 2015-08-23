require 'nokogiri'
require 'open-uri'
require 'pry'
module Shoutable

REQUEST_URI = 'http://shoutkey.com/new?url='

  def shoutkey
    doc = Nokogiri::HTML(open(REQUEST_URI+@url))
    doc.css('.hero-unit h1 a').text
  end
end