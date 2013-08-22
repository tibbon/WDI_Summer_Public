class BassesController < ApplicationController
  # GET /basses
  # GET /basses.json
  def index
    @basses = Bass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @basses }
    end
  end

  # GET /basses/1
  # GET /basses/1.json
  def show
    @bass = Bass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bass }
    end
  end

  # GET /basses/new
  # GET /basses/new.json
  def new
    @bass = Bass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bass }
    end
  end

  # GET /basses/1/edit
  def edit
    @bass = Bass.find(params[:id])
  end

  # POST /basses
  # POST /basses.json
  def create
    @bass = Bass.new(params[:bass])

    respond_to do |format|
      if @bass.save
        format.html { redirect_to @bass, notice: 'Bass was successfully created.' }
        format.json { render json: @bass, status: :created, location: @bass }
      else
        format.html { render action: "new" }
        format.json { render json: @bass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /basses/1
  # PUT /basses/1.json
  def update
    @bass = Bass.find(params[:id])

    respond_to do |format|
      if @bass.update_attributes(params[:bass])
        format.html { redirect_to @bass, notice: 'Bass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basses/1
  # DELETE /basses/1.json
  def destroy
    @bass = Bass.find(params[:id])
    @bass.destroy

    respond_to do |format|
      format.html { redirect_to basses_url }
      format.json { head :no_content }
    end
  end
end
