class FlatmatesController < ApplicationController
  before_action :set_flatmate, only: [:show, :edit, :update, :destroy]

  # GET /flatmates
  # GET /flatmates.json
  def index
    @flatmates = Flatmate.all
  end

  # GET /flatmates/1
  # GET /flatmates/1.json
  def show
  end

  # GET /flatmates/new
  def new
    @flatmate = Flatmate.new
  end

  # GET /flatmates/1/edit
  def edit
  end

  # POST /flatmates
  # POST /flatmates.json
  def create
    @flatmate = Flatmate.new(flatmate_params)

    respond_to do |format|
      if @flatmate.save
        format.html { redirect_to @flatmate, notice: 'Flatmate was successfully created.' }
        format.json { render :show, status: :created, location: @flatmate }
      else
        format.html { render :new }
        format.json { render json: @flatmate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flatmates/1
  # PATCH/PUT /flatmates/1.json
  def update
    respond_to do |format|
      if @flatmate.update(flatmate_params)
        format.html { redirect_to @flatmate, notice: 'Flatmate was successfully updated.' }
        format.json { render :show, status: :ok, location: @flatmate }
      else
        format.html { render :edit }
        format.json { render json: @flatmate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flatmates/1
  # DELETE /flatmates/1.json
  def destroy
    @flatmate.destroy
    respond_to do |format|
      format.html { redirect_to flatmates_url, notice: 'Flatmate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flatmate
      @flatmate = Flatmate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flatmate_params
      params.require(:flatmate).permit(:name, :phone, :email, :password)
    end
end
