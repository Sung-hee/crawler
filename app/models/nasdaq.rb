class Nasdaq < ActiveRecord::Base
  while true
    gift_url = "https://kr.investing.com/indices/indices-futures"
    gift_html = HTTParty.get(gift_url)
    doc = Nokogiri::HTML(gift_html)
    
    # 나스닥
    
    doc.css("#cross_rates_container").each do |djis|
      Nasdaq.create(
        :title => doc.css("#pair_8874 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        :date => doc.css("#pair_8874 > td:nth-child(3)").text,
        :current => doc.css("#pair_8874 > td.pid-8874-last").text,
        :high => doc.css("#pair_8874 > td.pid-8874-high").text,
        :low => doc.css("#pair_8874 > td.pid-8874-low").text,
        :variancce => doc.css("#pair_8874 > td.bold.pid-8874-pc.greenFont").text,
        :variance_per => doc.css("#pair_8874 > td.bold.pid-8874-pcp.greenFont").text,
        :hours => doc.css("#pair_8874 > td.pid-8874-time").text
      )
    end
    sleep 30
  end
end
