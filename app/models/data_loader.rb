require 'httparty'
class DataLoader
  include HTTParty
  base_uri "uri of the tool"
  format   :json
  # basic_auth APP_CONFIG[:urban_airship_key], APP_CONFIG[:urban_airship_application_master_secret]
  headers "Content-Type" => "application/json"
end