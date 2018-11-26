require "spec_helper"

describe TravellersController do
  describe "routing" do

    it "routes to #index" do
      get("/travellers").should route_to("travellers#index")
    end

    it "routes to #new" do
      get("/travellers/new").should route_to("travellers#new")
    end

    it "routes to #show" do
      get("/travellers/1").should route_to("travellers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/travellers/1/edit").should route_to("travellers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/travellers").should route_to("travellers#create")
    end

    it "routes to #update" do
      put("/travellers/1").should route_to("travellers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/travellers/1").should route_to("travellers#destroy", :id => "1")
    end

  end
end
