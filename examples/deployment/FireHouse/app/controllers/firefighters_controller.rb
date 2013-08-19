class FirefightersController < ApplicationController
  # GET /firefighters
  # GET /firefighters.json
  def index
    @firefighters = Firefighter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @firefighters }
    end
  end

  # GET /firefighters/1
  # GET /firefighters/1.json
  def show
    @firefighter = Firefighter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @firefighter }
    end
  end

  # GET /firefighters/new
  # GET /firefighters/new.json
  def new
    @firefighter = Firefighter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @firefighter }
    end
  end

  # GET /firefighters/1/edit
  def edit
    @firefighter = Firefighter.find(params[:id])
  end

  # POST /firefighters
  # POST /firefighters.json
  def create
    @firefighter = Firefighter.new(params[:firefighter])

    respond_to do |format|
      if @firefighter.save
        format.html { redirect_to @firefighter, notice: 'Firefighter was successfully created.' }
        format.json { render json: @firefighter, status: :created, location: @firefighter }
      else
        format.html { render action: "new" }
        format.json { render json: @firefighter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /firefighters/1
  # PUT /firefighters/1.json
  def update
    @firefighter = Firefighter.find(params[:id])

    respond_to do |format|
      if @firefighter.update_attributes(params[:firefighter])
        format.html { redirect_to @firefighter, notice: 'Firefighter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @firefighter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firefighters/1
  # DELETE /firefighters/1.json
  def destroy
    @firefighter = Firefighter.find(params[:id])
    @firefighter.destroy

    respond_to do |format|
      format.html { redirect_to firefighters_url }
      format.json { head :no_content }
    end
  end
end
