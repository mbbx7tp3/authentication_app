class FaltsController < ApplicationController
  before_action :set_falt, only: [:show, :edit, :update, :destroy]

  # GET /falts
  # GET /falts.json
  def index
    @falts = Falt.all
  end

  # GET /falts/1
  # GET /falts/1.json
  def show
  end

  # GET /falts/new
  def new
    @falt = Falt.new
  end

  # GET /falts/1/edit
  def edit
  end

  # POST /falts
  # POST /falts.json
  def create
    @falt = Falt.new(falt_params)

    respond_to do |format|
      if @falt.save
        format.html { redirect_to @falt, notice: 'Falt was successfully created.' }
        format.json { render :show, status: :created, location: @falt }
      else
        format.html { render :new }
        format.json { render json: @falt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /falts/1
  # PATCH/PUT /falts/1.json
  def update
    respond_to do |format|
      if @falt.update(falt_params)
        format.html { redirect_to @falt, notice: 'Falt was successfully updated.' }
        format.json { render :show, status: :ok, location: @falt }
      else
        format.html { render :edit }
        format.json { render json: @falt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /falts/1
  # DELETE /falts/1.json
  def destroy
    @falt.destroy
    respond_to do |format|
      format.html { redirect_to falts_url, notice: 'Falt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_falt
      @falt = Falt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def falt_params
      params.fetch(:falt, {})
    end
end
