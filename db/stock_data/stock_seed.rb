# Data from Nasdaq on stocks listed on US exchanges
# Taking a subset of data to speed up seeding
Stock.delete_all
require 'csv'
nysedata = CSV.open("db/stock_data/nysecompanylist.csv").readlines
i=0
k=50
for tmp in nysedata[1..nysedata.length]
    if i%k==0
        Stock.create symbol:tmp[0], co_name:tmp[1], ipo_year:tmp[4], sector:tmp[5], industry:tmp[6], website:tmp[7], exchange:"nyse"
    end
    i = i + 1
end


nasdaqdata = CSV.open("db/stock_data/companylist.csv").readlines
i = 0
for tmp in nasdaqdata[1..nasdaqdata.length]
    if i%k==0
        Stock.create symbol:tmp[0], co_name:tmp[1], ipo_year:tmp[4], sector:tmp[5], industry:tmp[6], website:tmp[7], exchange:"nasdaq"
    end
    i = i + 1
end

amexdata = CSV.open("db/stock_data/amexcompanylist.csv").readlines
i=0
for tmp in amexdata[1..amexdata.length]
    if i%k==0
        Stock.create symbol:tmp[0], co_name:tmp[1], ipo_year:tmp[4], sector:tmp[5], industry:tmp[6], website:tmp[7], exchange:"amex"
    end
    i=i+ 1
end

Stock.where("symbol LIKE ?","%^%").delete_all
    