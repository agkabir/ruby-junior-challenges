require "webmock/rspec"
require "rspec"

WebMock.disable_net_connect!

Dir["./lib/*.rb"].each { require _1 }

RSpec.configure do |config|
  config.before do
    stub_request(:get, "https://www.example.com/clients")
      .to_return(body:
                 [
                   { id: 1, name: "Hats Off Media",   evil: false },
                   { id: 2, name: "Toad in the Hole", evil: false },
                   { id: 3, name: "Giraffes Tail",    evil: true }
                 ].to_json)
  end
end
