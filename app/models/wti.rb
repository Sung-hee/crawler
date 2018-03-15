class Wti < ActiveRecord::Base
  # while true
  #   futures_url = "https://kr.investing.com/commodities/real-time-futures"
  #   futures_html = HTTParty.get(futures_url)
  #   doc = Nokogiri::HTML(futures_html)
    
  #   doc.css("#cross_rates_container").each do |djis|
  #     Wti.create(
  #       :title => doc.css("#cross_rate_1 > tbody > tr:nth-child(7) > td.bold.left.plusIconTd.noWrap.elp").text,
  #       :date => doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td:nth-child(3)").text,
  #       :closed => doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-last").text,
  #       :high => doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-high").text,
  #       :low => doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-low").text,
  #       :variance => doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.bold.pid-8849-pc.redFont").text,
  #       :variance_per => doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.bold.pid-8849-pcp.redFont").text,
  #       :hours => doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-time").text
  #     )
  #   end 
  #   sleep 30
  # end
end
