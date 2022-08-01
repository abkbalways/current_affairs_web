require 'nokogiri'
require 'open-uri'
# require 'net/http'
# require 'pry'


class Scraper
	def self.fetch_live_news
		url = "https://www.aajtak.in/"
		html = URI.open(url)
		# html = Net::HTTP.get(URI(url))
		doc = Nokogiri::HTML(html)
		titles = doc.css("#live-update-id-001 li")
		# binding.pry
		return titles
	end

end

# Scraper.fetch_live_news

