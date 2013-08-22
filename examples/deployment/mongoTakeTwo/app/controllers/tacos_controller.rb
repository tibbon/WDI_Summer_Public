class TacosController < ApplicationController
  # GET /tacos
  # GET /tacos.json
  def index
    @tacos = Taco.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tacos }
    end
  end

  # GET /tacos/1
  # GET /tacos/1.json
  def show
    @taco = Taco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taco }
    end
  end

  # GET /tacos/new
  # GET /tacos/new.json
  def new
    @taco = Taco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taco }
    end
  end

  # GET /tacos/1/edit
  def edit
    @taco = Taco.find(params[:id])
  end

  # POST /tacos
  # POST /tacos.json
  def create
    @taco = Taco.new(params[:taco])

    respond_to do |format|
      if @taco.save
        format.html { redirect_to @taco, notice: 'Taco was successfully created.' }
        format.json { render json: @taco, status: :created, location: @taco }
      else
        format.html { render action: "new" }
        format.json { render json: @taco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tacos/1
  # PUT /tacos/1.json
  def update
    @taco = Taco.find(params[:id])

    respond_to do |format|
      if @taco.update_attributes(params[:taco])
        format.html { redirect_to @taco, notice: 'Taco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tacos/1
  # DELETE /tacos/1.json
  def destroy
    @taco = Taco.find(params[:id])
    @taco.destroy

    respond_to do |format|
      format.html { redirect_to tacos_url }
      format.json { head :no_content }
    end
  end
end
