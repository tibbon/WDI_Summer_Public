class BurittosController < ApplicationController
  # GET /burittos
  # GET /burittos.json
  def index
    @burittos = Buritto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @burittos }
    end
  end

  # GET /burittos/1
  # GET /burittos/1.json
  def show
    @buritto = Buritto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @buritto }
    end
  end

  # GET /burittos/new
  # GET /burittos/new.json
  def new
    @buritto = Buritto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buritto }
    end
  end

  # GET /burittos/1/edit
  def edit
    @buritto = Buritto.find(params[:id])
  end

  # POST /burittos
  # POST /burittos.json
  def create
    @buritto = Buritto.new(params[:buritto])

    respond_to do |format|
      if @buritto.save
        format.html { redirect_to @buritto, notice: 'Buritto was successfully created.' }
        format.json { render json: @buritto, status: :created, location: @buritto }
      else
        format.html { render action: "new" }
        format.json { render json: @buritto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /burittos/1
  # PUT /burittos/1.json
  def update
    @buritto = Buritto.find(params[:id])

    respond_to do |format|
      if @buritto.update_attributes(params[:buritto])
        format.html { redirect_to @buritto, notice: 'Buritto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buritto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burittos/1
  # DELETE /burittos/1.json
  def destroy
    @buritto = Buritto.find(params[:id])
    @buritto.destroy

    respond_to do |format|
      format.html { redirect_to burittos_url }
      format.json { head :no_content }
    end
  end
end
