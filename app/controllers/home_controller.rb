class HomeController < ApplicationController
  def index
    if params[:ticker]
      @api = StockQuote::Stock.new(api_key: "pk_a18c72beb48d4b7a9c51e0961f9eef3c")
      @stocks = StockQuote::Stock.quote(params[:ticker])
    end
    
  end

  def about
  end

end
