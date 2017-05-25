require "rails_helper"

RSpec.describe Clerk::DepartmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clerk/departments").to route_to("clerk/departments#index")
    end

    it "routes to #new" do
      expect(:get => "/clerk/departments/new").to route_to("clerk/departments#new")
    end

    it "routes to #show" do
      expect(:get => "/clerk/departments/1").to route_to("clerk/departments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clerk/departments/1/edit").to route_to("clerk/departments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clerk/departments").to route_to("clerk/departments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/clerk/departments/1").to route_to("clerk/departments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/clerk/departments/1").to route_to("clerk/departments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clerk/departments/1").to route_to("clerk/departments#destroy", :id => "1")
    end

  end
end
