class ApplicationsApplicationsController < ApplicationController
  # GET /applications_applications
  # GET /applications_applications.json
  def index
    @applications_applications = ApplicationsApplication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applications_applications }
    end
  end

  # GET /applications_applications/1
  # GET /applications_applications/1.json
  def show
    @applications_application = ApplicationsApplication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applications_application }
    end
  end

  # GET /applications_applications/new
  # GET /applications_applications/new.json
  def new
    @applications_application = ApplicationsApplication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applications_application }
    end
  end

  # GET /applications_applications/1/edit
  def edit
    @applications_application = ApplicationsApplication.find(params[:id])
  end

  # POST /applications_applications
  # POST /applications_applications.json
  def create
    @applications_application = ApplicationsApplication.new(params[:applications_application])

    respond_to do |format|
      if @applications_application.save
        format.html { redirect_to @applications_application, notice: 'Applications application was successfully created.' }
        format.json { render json: @applications_application, status: :created, location: @applications_application }
      else
        format.html { render action: "new" }
        format.json { render json: @applications_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applications_applications/1
  # PUT /applications_applications/1.json
  def update
    @applications_application = ApplicationsApplication.find(params[:id])

    respond_to do |format|
      if @applications_application.update_attributes(params[:applications_application])
        format.html { redirect_to @applications_application, notice: 'Applications application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applications_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications_applications/1
  # DELETE /applications_applications/1.json
  def destroy
    @applications_application = ApplicationsApplication.find(params[:id])
    @applications_application.destroy

    respond_to do |format|
      format.html { redirect_to applications_applications_url }
      format.json { head :no_content }
    end
  end
end
