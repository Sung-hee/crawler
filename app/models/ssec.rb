class Ssec < ActiveRecord::Base
  while true
    major_url = "https://kr.investing.com/indices/major-indices"
    major_html = HTTParty.get(major_url)
    doc = Nokogiri::HTML(major_html)
  
    doc.css("#cross_rates_container").each do |djis|
      Ssec.create(
        :title => doc.css("#pair_40820 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        :current => doc.css("#pair_40820 > td.pid-40820-last").text,
        :high => doc.css("#pair_40820 > td.pid-40820-high").text,
        :low => doc.css("#pair_40820 > td.pid-40820-low").text,
        :variance => doc.css("#pair_40820 > td.bold.pid-40820-pc.greenFont").text,
        :variance_per => doc.css("#pair_40820 > td.bold.pid-40820-pcp.greenFont").text,
        :hours => doc.css("#pair_40820 > td.pid-40820-time").text
      )
    end 
    sleep 30
  end
end
