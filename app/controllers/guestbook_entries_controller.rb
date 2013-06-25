class GuestbookEntriesController < ApplicationController
  # GET /guestbook_entries
  def index
    @guestbook_entries = GuestbookEntry.order("created_at DESC").all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /guestbook_entries/1
  def show
    @guestbook_entry = GuestbookEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /guestbook_entries/new
  def new
    @guestbook_entry = GuestbookEntry.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /guestbook_entries/1/edit
  def edit
    @guestbook_entry = GuestbookEntry.find(params[:id])
  end

  # POST /guestbook_entries
  # POST /guestbook_entries.json
  def create
    @guestbook_entry = GuestbookEntry.new(params[:guestbook_entry])

    respond_to do |format|
      if @guestbook_entry.save
        format.html { redirect_to @guestbook_entry, notice: 'Guestbook entry was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /guestbook_entries/1
  def update
    @guestbook_entry = GuestbookEntry.find(params[:id])

    respond_to do |format|
      if @guestbook_entry.update_attributes(params[:guestbook_entry])
        format.html { redirect_to @guestbook_entry, notice: 'Guestbook entry was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /guestbook_entries/1
  def destroy
    @guestbook_entry = GuestbookEntry.find(params[:id])
    @guestbook_entry.destroy

    respond_to do |format|
      format.html { redirect_to guestbook_entries_url }
    end
  end
end
