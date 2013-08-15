class WeaponsController < ApplicationController
  # GET /weapons
  # GET /weapons.json
  def index
    @weapons = Weapon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weapons }
    end
  end

  # GET /weapons/1
  # GET /weapons/1.json
  def show
    @weapon = Weapon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weapon }
    end
  end

  # GET /weapons/new
  # GET /weapons/new.json
  def new
    @weapon = Weapon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weapon }
    end
  end

  # GET /weapons/1/edit
  def edit
    @weapon = Weapon.find(params[:id])
  end

  # POST /weapons
  # POST /weapons.json
  def create
    @weapon = Weapon.new(params[:weapon])

    respond_to do |format|
      if @weapon.save
        format.html { redirect_to @weapon, notice: 'Weapon was successfully created.' }
        format.json { render json: @weapon, status: :created, location: @weapon }
      else
        format.html { render action: "new" }
        format.json { render json: @weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weapons/1
  # PUT /weapons/1.json
  def update
    @weapon = Weapon.find(params[:id])

    respond_to do |format|
      if @weapon.update_attributes(params[:weapon])
        format.html { redirect_to @weapon, notice: 'Weapon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapons/1
  # DELETE /weapons/1.json
  def destroy
    @weapon = Weapon.find(params[:id])
    @weapon.destroy

    respond_to do |format|
      format.html { redirect_to weapons_url }
      format.json { head :no_content }
    end
  end
end
