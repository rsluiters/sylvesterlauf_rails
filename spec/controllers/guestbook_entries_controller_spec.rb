require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GuestbookEntriesController do

  # This should return the minimal set of attributes required to create a valid
  # GuestbookEntry. As you add validations to GuestbookEntry, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "content" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GuestbookEntriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all guestbook_entries as @guestbook_entries" do
      guestbook_entry = GuestbookEntry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:guestbook_entries).should eq([guestbook_entry])
    end
  end

  describe "GET show" do
    it "assigns the requested guestbook_entry as @guestbook_entry" do
      guestbook_entry = GuestbookEntry.create! valid_attributes
      get :show, {:id => guestbook_entry.to_param}, valid_session
      assigns(:guestbook_entry).should eq(guestbook_entry)
    end
  end

  describe "GET new" do
    it "assigns a new guestbook_entry as @guestbook_entry" do
      get :new, {}, valid_session
      assigns(:guestbook_entry).should be_a_new(GuestbookEntry)
    end
  end

  describe "GET edit" do
    it "assigns the requested guestbook_entry as @guestbook_entry" do
      guestbook_entry = GuestbookEntry.create! valid_attributes
      get :edit, {:id => guestbook_entry.to_param}, valid_session
      assigns(:guestbook_entry).should eq(guestbook_entry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GuestbookEntry" do
        expect {
          post :create, {:guestbook_entry => valid_attributes}, valid_session
        }.to change(GuestbookEntry, :count).by(1)
      end

      it "assigns a newly created guestbook_entry as @guestbook_entry" do
        post :create, {:guestbook_entry => valid_attributes}, valid_session
        assigns(:guestbook_entry).should be_a(GuestbookEntry)
        assigns(:guestbook_entry).should be_persisted
      end

      it "redirects to the created guestbook_entry" do
        post :create, {:guestbook_entry => valid_attributes}, valid_session
        response.should redirect_to(GuestbookEntry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved guestbook_entry as @guestbook_entry" do
        # Trigger the behavior that occurs when invalid params are submitted
        GuestbookEntry.any_instance.stub(:save).and_return(false)
        post :create, {:guestbook_entry => { "content" => "invalid value" }}, valid_session
        assigns(:guestbook_entry).should be_a_new(GuestbookEntry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        GuestbookEntry.any_instance.stub(:save).and_return(false)
        post :create, {:guestbook_entry => { "content" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested guestbook_entry" do
        guestbook_entry = GuestbookEntry.create! valid_attributes
        # Assuming there are no other guestbook_entries in the database, this
        # specifies that the GuestbookEntry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        GuestbookEntry.any_instance.should_receive(:update_attributes).with({ "content" => "MyText" })
        put :update, {:id => guestbook_entry.to_param, :guestbook_entry => { "content" => "MyText" }}, valid_session
      end

      it "assigns the requested guestbook_entry as @guestbook_entry" do
        guestbook_entry = GuestbookEntry.create! valid_attributes
        put :update, {:id => guestbook_entry.to_param, :guestbook_entry => valid_attributes}, valid_session
        assigns(:guestbook_entry).should eq(guestbook_entry)
      end

      it "redirects to the guestbook_entry" do
        guestbook_entry = GuestbookEntry.create! valid_attributes
        put :update, {:id => guestbook_entry.to_param, :guestbook_entry => valid_attributes}, valid_session
        response.should redirect_to(guestbook_entry)
      end
    end

    describe "with invalid params" do
      it "assigns the guestbook_entry as @guestbook_entry" do
        guestbook_entry = GuestbookEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GuestbookEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => guestbook_entry.to_param, :guestbook_entry => { "content" => "invalid value" }}, valid_session
        assigns(:guestbook_entry).should eq(guestbook_entry)
      end

      it "re-renders the 'edit' template" do
        guestbook_entry = GuestbookEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GuestbookEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => guestbook_entry.to_param, :guestbook_entry => { "content" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested guestbook_entry" do
      guestbook_entry = GuestbookEntry.create! valid_attributes
      expect {
        delete :destroy, {:id => guestbook_entry.to_param}, valid_session
      }.to change(GuestbookEntry, :count).by(-1)
    end

    it "redirects to the guestbook_entries list" do
      guestbook_entry = GuestbookEntry.create! valid_attributes
      delete :destroy, {:id => guestbook_entry.to_param}, valid_session
      response.should redirect_to(guestbook_entries_url)
    end
  end

end
