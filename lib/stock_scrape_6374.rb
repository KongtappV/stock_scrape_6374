# Name: Kongtapp Veerawattananun
# StudentID: 6210546374
# frozen_string_literal: false

require 'nokogiri'
require 'httparty'

def scraper()
    url = 'https://www.set.or.th/set/companyhighlight.do?symbol=DELTA'
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    title = parsed_page.css('h3').text
    asset = parsed_page.css('tr')[2].css('td')[4].text
    puts "#{title} : #{asset}"
end
