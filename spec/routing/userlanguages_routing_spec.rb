require "rails_helper"

RSpec.describe UserlanguagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/userlanguages").to route_to("userlanguages#index")
    end

    it "routes to #new" do
      expect(:get => "/userlanguages/new").to route_to("userlanguages#new")
    end

    it "routes to #show" do
      expect(:get => "/userlanguages/1").to route_to("userlanguages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/userlanguages/1/edit").to route_to("userlanguages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/userlanguages").to route_to("userlanguages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/userlanguages/1").to route_to("userlanguages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/userlanguages/1").to route_to("userlanguages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/userlanguages/1").to route_to("userlanguages#destroy", :id => "1")
    end

  end
end
