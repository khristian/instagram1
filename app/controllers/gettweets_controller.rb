class GettweetsController < ApplicationController
  # GET /gettweets
  # GET /gettweets.json
  def index
    @gettweets = Gettweet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gettweets }
    end
  end

  # GET /gettweets/1
  # GET /gettweets/1.json
  def show
    @gettweet = Gettweet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gettweet }
    end
  end

  # GET /gettweets/new
  # GET /gettweets/new.json
  def new
    @gettweet = Gettweet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gettweet }
    end
  end

  # GET /gettweets/1/edit
  def edit
    @gettweet = Gettweet.find(params[:id])
  end

  # POST /gettweets
  # POST /gettweets.json
  def create
    @gettweet = Gettweet.new(params[:gettweet])

    respond_to do |format|
      if @gettweet.save
        format.html { redirect_to @gettweet, notice: 'Gettweet was successfully created.' }
        format.json { render json: @gettweet, status: :created, location: @gettweet }
      else
        format.html { render action: "new" }
        format.json { render json: @gettweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gettweets/1
  # PUT /gettweets/1.json
  def update
    @gettweet = Gettweet.find(params[:id])

    respond_to do |format|
      if @gettweet.update_attributes(params[:gettweet])
        format.html { redirect_to @gettweet, notice: 'Gettweet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gettweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gettweets/1
  # DELETE /gettweets/1.json
  def destroy
    @gettweet = Gettweet.find(params[:id])
    @gettweet.destroy

    respond_to do |format|
      format.html { redirect_to gettweets_url }
      format.json { head :no_content }
    end
  end
end
