class InvestingController < ApplicationController
  require 'httparty'
  require 'nokogiri'
  
  def index
    gift_url = "https://kr.investing.com/indices/indices-futures"
    gift_html = HTTParty.get(gift_url)
    doc = Nokogiri::HTML(gift_html)
    
    # 다우존스
    @dji = Array.new
    
    doc.css("#cross_rates_container").each do |djis|
      @dji << {
        title: doc.css("#pair_8873 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        date: doc.css("#pair_8873 > td:nth-child(3)").text,
        current: doc.css("#pair_8873 > td.pid-8873-last").text,
        high: doc.css("#pair_8873 > td.pid-8873-high").text,
        low: doc.css("#pair_8873 > td.pid-8873-low").text,
        variance: doc.css("#pair_8873 > td.bold.pid-8873-pc.greenFont").text,
        variance_per: doc.css("#pair_8873 > td.bold.pid-8873-pcp.greenFont").text,
        hours: doc.css("#pair_8873 > td.pid-8873-time").text
      }
    end
    
    puts @dji.inspect
    
    @sp500 = Array.new
    
    doc.css("#cross_rates_container").each do |djis|
      @sp500 << {
        title: doc.css("#pair_8839 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        date: doc.css("#pair_8839 > td:nth-child(3)").text,
        current: doc.css("#pair_8839 > td.pid-8839-last").text,
        high: doc.css("#pair_8839 > td.pid-8839-high").text,
        low: doc.css("#pair_8839 > td.pid-8839-low").text,
        variance: doc.css("#pair_8839 > td.bold.pid-8839-pc.greenFont").text,
        variance_per: doc.css("#pair_8839 > td.bold.pid-8839-pcp.greenFont").text,
        hours: doc.css("#pair_8839 > td.pid-8839-time").text
      }
    end 
    puts @sp500.inspect
    
    @nasdaq = Array.new
    
    doc.css("#cross_rates_container").each do |djis|
      @nasdaq << {
        title: doc.css("#pair_8874 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        date: doc.css("#pair_8874 > td:nth-child(3)").text,
        current: doc.css("#pair_8874 > td.pid-8874-last").text,
        high: doc.css("#pair_8874 > td.pid-8874-high").text,
        low: doc.css("#pair_8874 > td.pid-8874-low").text,
        variance: doc.css("#pair_8874 > td.bold.pid-8874-pc.greenFont").text,
        variance_per: doc.css("#pair_8874 > td.bold.pid-8874-pcp.greenFont").text,
        hours: doc.css("#pair_8874 > td.pid-8874-time").text
      }
    end 
    
    puts @nasdaq.inspect
    
    major_url = "https://kr.investing.com/indices/major-indices"
    major_html = HTTParty.get(major_url)
    doc = Nokogiri::HTML(major_html)
    
    @nikkei = Array.new
    
    doc.css("#cross_rates_container").each do |djis|
      @nikkei << {
        title: doc.css("#pair_178 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        current: doc.css("#pair_178 > td.pid-178-last").text,
        high: doc.css("#pair_178 > td.pid-178-high").text,
        low: doc.css("#pair_178 > td.pid-178-low").text,
        variance: doc.css("#pair_178 > td.bold.pid-178-pc.greenFont").text,
        variance_per: doc.css("#pair_178 > td.bold.pid-178-pcp.greenFont").text,
        hours: doc.css("#pair_178 > td.pid-178-time").text
      }
    end 

    puts @nikkei.inspect
    
    @ssec = Array.new
    
    doc.css("#cross_rates_container").each do |djis|
      @ssec << {
        title: doc.css("#pair_40820 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        current: doc.css("#pair_40820 > td.pid-40820-last").text,
        high: doc.css("#pair_40820 > td.pid-40820-high").text,
        low: doc.css("#pair_40820 > td.pid-40820-low").text,
        variance: doc.css("#pair_40820 > td.bold.pid-40820-pc.greenFont").text,
        variance_per: doc.css("#pair_40820 > td.bold.pid-40820-pcp.greenFont").text,
        hours: doc.css("#pair_40820 > td.pid-40820-time").text
      }
    end 

    puts @ssec.inspect
    
    futures_url = "https://kr.investing.com/commodities/real-time-futures"
    futures_html = HTTParty.get(futures_url)
    doc = Nokogiri::HTML(futures_html)
    
    @gold = Array.new
    
    doc.css("#cross_rates_container").each do |djis|
      @gold << {
        title: doc.css("#cross_rate_1 > tbody > tr:nth-child(1) > td.bold.left.plusIconTd.noWrap.elp").text,
        date: doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td:nth-child(3)").text,
        closed: doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-last").text,
        high: doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-high").text,
        low: doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-low").text,
        variance: doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.bold.pid-8830-pc.redFont").text,
        variance_per: doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.bold.pid-8830-pcp.redFont").text,
        hours: doc.css("#cross_rate_1 >tbody > tr:nth-child(1) > td.pid-8830-time").text
      }
    end 

    puts @gold.inspect    
    
    @wti = Array.new
    
    doc.css("#cross_rates_container").each do |djis|
      @wti << {
        title: doc.css("#cross_rate_1 > tbody > tr:nth-child(7) > td.bold.left.plusIconTd.noWrap.elp").text,
        date: doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td:nth-child(3)").text,
        closed: doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-last").text,
        high: doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-high").text,
        low: doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-low").text,
        variance: doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.bold.pid-8849-pc.redFont").text,
        variance_per: doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.bold.pid-8849-pcp.redFont").text,
        hours: doc.css("#cross_rate_1 >tbody > tr:nth-child(7) > td.pid-8849-time").text
      }
    end 

    puts @wti.inspect   
    
    currencies_url = "https://kr.investing.com/currencies/"
    currencies_html = HTTParty.get(currencies_url)
    doc = Nokogiri::HTML(currencies_html)
    
    @usdkrw = Array.new
    
    doc.css("#cr1").each do |djis|
      @usdkrw << {
        title: doc.css("#pair_650 > td.bold.left.noWrap.elp.plusIconTd > a").text,
        event: doc.css("#pair_650 > td:nth-child(3)").text,
        current: doc.css("#pair_650 > td.pid-650-last").text,
        high: doc.css("#pair_650 > td.pid-650-high").text,
        low: doc.css("#pair_650 > td.pid-650-low").text,
        variance: doc.css("#pair_650 > td.bold.pid-650-pc.redFont").text,
        variance_per: doc.css("#pair_650 > td.bold.pid-650-pcp.redFont").text,
        hours: doc.css("#pair_650 > td.pid-650-time").text
      }
    end 

    puts @usdkrw.inspect
    
    render json: {dji: @dji, sp500: @sp500, nasdaq: @nasdaq, nikkei: @nikkei, ssec: @ssec, gold: @gold, wti: @wti, usdkrw: @usdkrw}
  end
  
  def view
  end
end
