require_relative '../lib/dark_trader'

describe "crypto_scrapper functions" do

    it "return array with name and prices " do
        expect(crypto_scrapper(list_name, list_prices).class).to eq(array)
    end
end