class FiresController < ApplicationController
  # GET /fires
  # GET /fires.json
  def index
    @fires = Fire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fires }
    end
  end

  # GET /fires/1
  # GET /fires/1.json
  def show
    @fire = Fire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fire }
    end
  end

  # GET /fires/new
  # GET /fires/new.json
  def new
    @fire = Fire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fire }
    end
  end

  # GET /fires/1/edit
  def edit
    @fire = Fire.find(params[:id])
  end

  # POST /fires
  # POST /fires.json
  def create
    @fire = Fire.new(params[:fire])

    respond_to do |format|
      if @fire.save
        format.html { redirect_to @fire, notice: 'Fire was successfully created.' }
        format.json { render json: @fire, status: :created, location: @fire }
      else
        format.html { render action: "new" }
        format.json { render json: @fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fires/1
  # PUT /fires/1.json
  def update
    @fire = Fire.find(params[:id])

    respond_to do |format|
      if @fire.update_attributes(params[:fire])
        format.html { redirect_to @fire, notice: 'Fire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fires/1
  # DELETE /fires/1.json
  def destroy
    @fire = Fire.find(params[:id])
    @fire.destroy

    respond_to do |format|
      format.html { redirect_to fires_url }
      format.json { head :no_content }
    end
  end
end
