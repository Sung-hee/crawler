class Usdkrw < ActiveRecord::Base
  # while true
  #   currencies_url = "https://kr.investing.com/currencies/"
  #   currencies_html = HTTParty.get(currencies_url)
  #   doc = Nokogiri::HTML(currencies_html)
    
  #   doc.css("#cr1").each do |djis|
  #     Usdkrw.create(
  #       :title => doc.css("#pair_650 > td.bold.left.noWrap.elp.plusIconTd > a").text,
  #       :event => doc.css("#pair_650 > td:nth-child(3)").text,
  #       :current => doc.css("#pair_650 > td.pid-650-last").text,
  #       :high => doc.css("#pair_650 > td.pid-650-high").text,
  #       :low => doc.css("#pair_650 > td.pid-650-low").text,
  #       :variance => doc.css("#pair_650 > td.bold.pid-650-pc.redFont").text,
  #       :variance_per => doc.css("#pair_650 > td.bold.pid-650-pcp.redFont").text,
  #       :hours => doc.css("#pair_650 > td.pid-650-time").text
  #     )
  #   end 
  #   sleep 30
  # end
end
