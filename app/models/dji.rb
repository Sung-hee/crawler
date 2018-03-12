class Dji < ActiveRecord::Base
  gift_url = "https://kr.investing.com/indices/indices-futures"
  gift_html = HTTParty.get(gift_url)
  doc = Nokogiri::HTML(gift_html)
  
  # 다우존스
  
  doc.css("#cross_rates_container").each do |djis|
    Dji.create(
      :title => doc.css("#pair_8873 > td.bold.left.noWrap.elp.plusIconTd > a").text,
      :date => doc.css("#pair_8873 > td:nth-child(3)").text,
      :current => doc.css("#pair_8873 > td.pid-8873-last").text,
      :high => doc.css("#pair_8873 > td.pid-8873-high").text,
      :low => doc.css("#pair_8873 > td.pid-8873-low").text,
      :variancce => doc.css("#pair_8873 > td.bold.pid-8873-pc.greenFont").text,
      :variance_per => doc.css("#pair_8873 > td.bold.pid-8873-pcp.greenFont").text,
      :hours => doc.css("#pair_8873 > td.pid-8873-time").text
    )
  end
  
end
