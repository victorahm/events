FactoryBot.define do
  factory :event do
    name { "MyName" }
    venue { "VenuePlace" }
    address { "MyAddress" }
    city { "MyCity" }
    state { "MyState" }
    country { "MyCountry" }
    event_at { "2024-10-02 07:38:16" }
    latitude { "9.99" }
    longitude { "9.99" }
  end
end
