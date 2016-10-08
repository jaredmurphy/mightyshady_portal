require 'rails_helper'

RSpec.describe "Bands API", :type => :request do
  before(:each) do
    Band.create(
      name: "Firesale",
      city: "Iowa City",
      state: "Iowa",
      genre: ""
    )
    Band.create(
      name: "Doctor Murdock",
      city: "Ames",
      state: "Iowa",
      genre: ""
    )
  end

  describe "GET /bands" do
    it "returns a 200 OK" do
      get "/api/v1/bands" do
        expect(response).to be_success
      end
    end

    it "responds with bands data" do
      get "/api/v1/bands"
      data = JSON.parse(response.body)

      expect(data).to_not be_empty

      data.each do |band|
        check_band_keys band
      end
    end
  end # ends get /bands

  describe "GET /bands/:id" do
    context "when the id is valid" do
      it "returns a 200 OK" do
        band = Band.first

        get "/api/v1/bands/#{band.id}"
        expect(response).to be_success

        data = JSON.parse(response.body)
        expect(data).to_not be_empty
        check_band_keys data
      end
    end

    context "when the id is invalid" do
      it "returns a 404 status" do
        get "/api/v1/bands/9000"
        expect(response.status).to eq 404
      end

      it "responds with message of Not Found" do
        get "/api/v1/bands/9000"
        message = JSON.parse(response.body)["error"]
        expect(message).to eq "Not Found"
      end
    end
  end # ends get /bands/:id

  describe "POST /bands" do
    context "when params are provided correctly" do
      it "returns a 200 OK" do
        band = Band.second
        post "/api/v1/bands", as: :json, params: band
        expect(response).to be_success
      end
    end
  end

  describe "PUT /bands/:id" do
    context "when band currently exists" do
      it "returns a 200 OK" do
        band = Band.second
        band_params = { :id => band.id, :name => band.name, :city => band.city, :state => band.state, :genre => "alternative"}
        put "/api/v1/bands/#{band.id}", as: :json, params: { band: band_params }
        expect(response).to be_success
      end

      it "updates info correctly" do
        band = Band.first
        band_params = { :id => band.id, :name => band.name, :city => band.city, :state => band.state, :genre => "reggae"}
        put "/api/v1/bands/#{band.id}", as: :json, params: { band: band_params }
        data = JSON.parse(response.body)
        expect(data["genre"]).to eq("reggae")
      end
    end
  end

end
