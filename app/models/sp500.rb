class Sp500 < ActiveRecord::Base
  while true
    gift_url = "https://kr.investing.com/indices/indices-futures"
    gift_html = HTTParty.get(gift_url)
    doc = Nokogiri::HTML(gift_html)
    
    # S&P500
    
    doc.css("#cross_rates_container").each do |djis|
      Sp500.create(
        :title => doc.css("#pair_8839 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        :date => doc.css("#pair_8839 > td:nth-child(3)").text,
        :current => doc.css("#pair_8839 > td.pid-8839-last").text,
        :high => doc.css("#pair_8839 > td.pid-8839-high").text,
        :low => doc.css("#pair_8839 > td.pid-8839-low").text,
        :variancce => doc.css("#pair_8839 > td.bold.pid-8839-pc.greenFont").text,
        :variance_per => doc.css("#pair_8839 > td.bold.pid-8839-pcp.greenFont").text,
        :hours => doc.css("#pair_8839 > td.pid-8839-time").text
      )
    end
    sleep 30
  end
end
