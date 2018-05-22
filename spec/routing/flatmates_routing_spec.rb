require "rails_helper"

RSpec.describe FlatmatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flatmates").to route_to("flatmates#index")
    end

    it "routes to #new" do
      expect(:get => "/flatmates/new").to route_to("flatmates#new")
    end

    it "routes to #show" do
      expect(:get => "/flatmates/1").to route_to("flatmates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/flatmates/1/edit").to route_to("flatmates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/flatmates").to route_to("flatmates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flatmates/1").to route_to("flatmates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flatmates/1").to route_to("flatmates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flatmates/1").to route_to("flatmates#destroy", :id => "1")
    end

  end
end
