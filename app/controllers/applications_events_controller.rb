class ApplicationsEventsController < ApplicationController
  # GET /applications_events
  # GET /applications_events.json
  def index
    @applications_events = ApplicationsEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applications_events }
    end
  end

  # GET /applications_events/1
  # GET /applications_events/1.json
  def show
    @applications_event = ApplicationsEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applications_event }
    end
  end

  # GET /applications_events/new
  # GET /applications_events/new.json
  def new
    @applications_event = ApplicationsEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applications_event }
    end
  end

  # GET /applications_events/1/edit
  def edit
    @applications_event = ApplicationsEvent.find(params[:id])
  end

  # POST /applications_events
  # POST /applications_events.json
  def create
    @applications_event = ApplicationsEvent.new(params[:applications_event])

    respond_to do |format|
      if @applications_event.save
        format.html { redirect_to @applications_event, notice: 'Applications event was successfully created.' }
        format.json { render json: @applications_event, status: :created, location: @applications_event }
      else
        format.html { render action: "new" }
        format.json { render json: @applications_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applications_events/1
  # PUT /applications_events/1.json
  def update
    @applications_event = ApplicationsEvent.find(params[:id])

    respond_to do |format|
      if @applications_event.update_attributes(params[:applications_event])
        format.html { redirect_to @applications_event, notice: 'Applications event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applications_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications_events/1
  # DELETE /applications_events/1.json
  def destroy
    @applications_event = ApplicationsEvent.find(params[:id])
    @applications_event.destroy

    respond_to do |format|
      format.html { redirect_to applications_events_url }
      format.json { head :no_content }
    end
  end
end
