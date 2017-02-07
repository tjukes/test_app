require "rails_helper"

RSpec.describe SnurksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/snurks").to route_to("snurks#index")
    end

    it "routes to #new" do
      expect(:get => "/snurks/new").to route_to("snurks#new")
    end

    it "routes to #show" do
      expect(:get => "/snurks/1").to route_to("snurks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/snurks/1/edit").to route_to("snurks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/snurks").to route_to("snurks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/snurks/1").to route_to("snurks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/snurks/1").to route_to("snurks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/snurks/1").to route_to("snurks#destroy", :id => "1")
    end

  end
end
