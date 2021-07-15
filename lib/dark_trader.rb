require 'rubygems'
require 'nokogiri'
require 'open-uri'
    
#recupérer les donnees du sites:
#scanner les pages et pointer les données 

def list_name
    arr_names = []
    page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
    page.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div").each do |node|
        arr_names << (node.text)
    end
    return arr_names

end

def list_prices
    arr_prices = []
    page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
    page.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a").each do |node|
        arr_prices << (node.text)
    end
    return arr_prices
end
    
def crypto_scrapper(arr_names , arr_prices)
    arr_names.zip(arr_prices).map{|x, y| { x => y.delete("$,").to_f}}
end
puts crypto_scrapper(list_name, list_prices)[0]
