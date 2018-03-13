class Gold < ActiveRecord::Base
  
  while true
    futures_url = "https://kr.investing.com/commodities/real-time-futures"
    futures_html = HTTParty.get(futures_url)
    doc = Nokogiri::HTML(futures_html)
    
    doc.css("#cross_rates_container").each do |djis|
      Gold.create(
        :title => doc.css("#cross_rate_1 > tbody > tr:nth-child(1) > td.bold.left.plusIconTd.noWrap.elp").text,
        :date => doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td:nth-child(3)").text,
        :closed => doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-last").text,
        :high => doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-high").text,
        :low => doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-low").text,
        :variance => doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.bold.pid-8830-pc.redFont").text,
        :variance_per => doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.bold.pid-8830-pcp.redFont").text,
        :hours => doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-time").text
      )
    end 
    sleep 30
  end
end