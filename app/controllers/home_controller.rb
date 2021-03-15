class HomeController < ApplicationController
  
  def index
    @api = StockQuote::Stock.new(api_key: "pk_a18c72beb48d4b7a9c51e0961f9eef3c")

    if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter A Symbol"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue RuntimeError
        @error = "Hey! That stock symbol doesn't exist. Please try again"
      ensure
        puts "DONE"
      end
  	end
  end

  def about
  end

  

end

