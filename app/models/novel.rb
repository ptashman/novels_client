class Novel < JsonApiClient::Resource
  self.site = "http://localhost:3000/"
  def self.bye_all
    byebug
    all
  end
end
