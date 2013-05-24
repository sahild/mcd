require 'httparty'

class DataLoader
  include HTTParty
  base_uri "http://180.179.212.70:8080/mbaas/services/mbaas"
  format   :json
  basic_auth "tenant","tenant"
  headers "Content-Type" => "application/json"
  def self.upload_data_for_all_banks
    banks = ["hdfc"]
    banks.each do |item|
      upload_data_for_bank(item)
    end
  end

  def self.upload_data_for_bank(bank_name)
    uri = URI.parse(URI.encode("/"+bank_name + '?' + "tenant=1")).to_s
    response=get(uri)
    deals = []
    Deal.where("").destroy_all
    JSON.parse(response.body).each do |k,v|
      v["offer"].each do |deal|
        deals << deal
      end
    end
    deals.each do |item|
      deal = Deal.new
      deal.schemetext = item["schemetext"]
      deal.desc = item["desc"]
      deal.vendor = item["vendor"]
      deal.imageurl = item["imageurl"]
      deal.location = item["location"]
      deal.validupto = item["validupto"]
      deal.save!
      item["cardtype"].each do |card_type|
        bank = Bank.find_by_name(card_type["bank"].upcase)
        bank = Bank.create!(:name => card_type["bank"].upcase) unless bank
        card = Card.where(:card_type => card_type["type"].upcase, :category => card_type["category"].upcase, :name => card_type["name"].upcase, :bank_id => bank.id).first
        unless card.present?
          card = Card.new
          card.card_type = card_type["type"].upcase
          card.category = card_type["category"].upcase
          card.name = card_type["name"].upcase
        card.bank_id = bank.id
        card.save!
        end
        deal.cards << card
      end
    end
  end
end