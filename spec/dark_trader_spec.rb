require_relative '../lib/dark_trader'

describe "crypto_scrapper functions" do

    it "return array with name and prices " do
        expect(crypto_scrapper(list_name, list_prices).class).to eq(Array)
    end
    it "return array with name and prices" do 
        expect((crypto_scrapper(list_name, list_prices)[0]["BTC"]).class).to eq(Float)
       
    end
    it "return array with name and prices " do
        expect(crypto_scrapper(list_name, list_prices).length).to eq(20)
    end

end