class BusinessWebsitesController < ApplicationController
  # GET /business_websites
  # GET /business_websites.json
  def index
    @business_websites = BusinessWebsite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_websites }
    end
  end

  # GET /business_websites/1
  # GET /business_websites/1.json
  def show
    @business_website = BusinessWebsite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_website }
    end
  end

  # GET /business_websites/new
  # GET /business_websites/new.json
  def new
    @business_website = BusinessWebsite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_website }
    end
  end

  # GET /business_websites/1/edit
  def edit
    @business_website = BusinessWebsite.find(params[:id])
  end

  # POST /business_websites
  # POST /business_websites.json
  def create
    @business_website = BusinessWebsite.new(params[:business_website])

    respond_to do |format|
      if @business_website.save
        format.html { redirect_to @business_website, notice: 'Business website was successfully created.' }
        format.json { render json: @business_website, status: :created, location: @business_website }
      else
        format.html { render action: "new" }
        format.json { render json: @business_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_websites/1
  # PUT /business_websites/1.json
  def update
    @business_website = BusinessWebsite.find(params[:id])

    respond_to do |format|
      if @business_website.update_attributes(params[:business_website])
        format.html { redirect_to @business_website, notice: 'Business website was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_websites/1
  # DELETE /business_websites/1.json
  def destroy
    @business_website = BusinessWebsite.find(params[:id])
    @business_website.destroy

    respond_to do |format|
      format.html { redirect_to business_websites_url }
      format.json { head :no_content }
    end
  end
end
