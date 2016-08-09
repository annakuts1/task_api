require "rails_helper"

RSpec.describe TasksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/Tasks").to route_to("Tasks#index")
    end

    it "routes to #new" do
      expect(:get => "/Tasks/new").to route_to("Tasks#new")
    end

    it "routes to #show" do
      expect(:get => "/Tasks/1").to route_to("Tasks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/Tasks/1/edit").to route_to("Tasks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/Tasks").to route_to("Tasks#create")
    end

    it "routes to #update" do
      expect(:put => "/Tasks/1").to route_to("Tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/Tasks/1").to route_to("Tasks#destroy", :id => "1")
    end

  end
end
