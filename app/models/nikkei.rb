class Nikkei < ActiveRecord::Base
    major_url = "https://kr.investing.com/indices/major-indices"
    major_html = HTTParty.get(major_url)
    doc = Nokogiri::HTML(major_html)
  
    doc.css("#cross_rates_container").each do |djis|
      Nikkei.create(
        :title => doc.css("#pair_178 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        :current => doc.css("#pair_178 > td.pid-178-last").text,
        :high => doc.css("#pair_178 > td.pid-178-high").text,
        :low => doc.css("#pair_178 > td.pid-178-low").text,
        :variance => doc.css("#pair_178 > td.bold.pid-178-pc.greenFont").text,
        :variance_per => doc.css("#pair_178 > td.bold.pid-178-pcp.greenFont").text,
        :hours => doc.css("#pair_178 > td.pid-178-time").text
      )
    end 
end
