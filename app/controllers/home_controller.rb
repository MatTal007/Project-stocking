class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
      @nothing = "Hey! You forgot To Enter A Symbol"
    elsif params[:ticker]
        @api = StockQuote::Stock.new(api_key: "pk_a18c72beb48d4b7a9c51e0961f9eef3c"),
        @stocks = StockQuote::Stock.quote(params[:ticker])
        if !@stocks
          @error = "Hey! That Stock Symbol does not exist. Please try again!"
        end
    end

  end

  def about
  end

end
