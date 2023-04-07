require "rails_helper"

RSpec.describe ConstituentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/constituents").to route_to("constituents#index")
    end

    it "routes to #new" do
      expect(get: "/constituents/new").to route_to("constituents#new")
    end

    it "routes to #show" do
      expect(get: "/constituents/1").to route_to("constituents#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/constituents/1/edit").to route_to("constituents#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/constituents").to route_to("constituents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/constituents/1").to route_to("constituents#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/constituents/1").to route_to("constituents#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/constituents/1").to route_to("constituents#destroy", id: "1")
    end
  end
end
