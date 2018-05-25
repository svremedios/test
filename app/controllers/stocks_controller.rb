class StocksController < ApplicationController

  def index

  end

  def show

  end
  
  def reseed
    if params['size']=="mini"
       load "db/stock_data/stock_seed.rb"
    else
       load "db/stock_data/seeds.rb"
    end
     redirect_to "/stocks"
  end

  def destroy
    Stock.delete(params["id"])
    redirect_to "/stocks"

  end

  def new

  end

  def create
    Stock.create symbol:params['symbol'], 
                  co_name:params['co_name'], 
                  ipo_year:params['ipo_year'], 
                  sector:params['sector'], 
                  industry:params['industry'], 
                  website:'https://www.nasdaq.com/symbol/'+ params['symbol'], 
                  exchange:params['exchange']
    redirect_to "/stocks"
  end

  def edit

  end

  def update

  end

end
