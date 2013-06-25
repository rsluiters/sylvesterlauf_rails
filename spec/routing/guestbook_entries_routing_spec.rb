require "spec_helper"

describe GuestbookEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/guestbook_entries").should route_to("guestbook_entries#index")
    end

    it "routes to #new" do
      get("/guestbook_entries/new").should route_to("guestbook_entries#new")
    end

    it "routes to #show" do
      get("/guestbook_entries/1").should route_to("guestbook_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/guestbook_entries/1/edit").should route_to("guestbook_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/guestbook_entries").should route_to("guestbook_entries#create")
    end

    it "routes to #update" do
      put("/guestbook_entries/1").should route_to("guestbook_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/guestbook_entries/1").should route_to("guestbook_entries#destroy", :id => "1")
    end

  end
end
