class HomeController < ApplicationController

def index
    @news = Scraper.fetch_live_news
end

end