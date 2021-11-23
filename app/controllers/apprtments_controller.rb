class ApprtmentsController < ApplicationController
  before_action :set_apprtment, only: %i[ show edit update destroy ]

  # GET /apprtments or /apprtments.json
  def index
    @apprtments = Apprtment.all
  end

  # GET /apprtments/1 or /apprtments/1.json
  def show
  end

  # GET /apprtments/new
  def new
    @apprtment = Apprtment.new
    @dangerousThings = ['Security camera(s)','Weapons','Dangerous animals']
  end

  # GET /apprtments/1/edit
  def edit
  end

  # POST /apprtments or /apprtments.json
  def create
    @apprtment = Apprtment.new(apprtment_params)

    respond_to do |format|
      if @apprtment.save
        format.html { redirect_to @apprtment, notice: "Apprtment was successfully created." }
        format.json { render :show, status: :created, location: @apprtment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apprtment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apprtments/1 or /apprtments/1.json
  def update
    respond_to do |format|
      if @apprtment.update(apprtment_params)
        format.html { redirect_to @apprtment, notice: "Apprtment was successfully updated." }
        format.json { render :show, status: :ok, location: @apprtment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apprtment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apprtments/1 or /apprtments/1.json
  def destroy
    @apprtment.destroy
    respond_to do |format|
      format.html { redirect_to apprtments_url, notice: "Apprtment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apprtment
      @apprtment = Apprtment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apprtment_params
      params.require(:apprtment).permit(:hostingAs, {:dangerousThings => []}, :price, :description, :amenities, :guestFavorites, {images: []} , :title, :highlights, :street, :suit, :city, :state, :country, :zipCode, :rentingType, :place)
    end
end
