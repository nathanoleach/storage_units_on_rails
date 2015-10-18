class StorageUnitsController < ApplicationController
  before_action :set_storage_unit, only: [:show, :edit, :update, :destroy]

  # GET /storage_units
  # GET /storage_units.json
  def index
    @storage_units = StorageUnit.all
  end

  # GET /storage_units/1
  # GET /storage_units/1.json
  def show
  end

  # GET /storage_units/new
  def new
    @storage_unit = StorageUnit.new
  end

  # GET /storage_units/1/edit
  def edit
  end

  # POST /storage_units
  # POST /storage_units.json
  def create
    @storage_unit = StorageUnit.new(storage_unit_params)

    respond_to do |format|
      if @storage_unit.save
        format.html { redirect_to @storage_unit, notice: 'Storage unit was successfully created.' }
        format.json { render :show, status: :created, location: @storage_unit }
      else
        format.html { render :new }
        format.json { render json: @storage_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storage_units/1
  # PATCH/PUT /storage_units/1.json
  def update
    respond_to do |format|
      if @storage_unit.update(storage_unit_params)
        format.html { redirect_to @storage_unit, notice: 'Storage unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @storage_unit }
      else
        format.html { render :edit }
        format.json { render json: @storage_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_units/1
  # DELETE /storage_units/1.json
  def destroy
    @storage_unit.destroy
    respond_to do |format|
      format.html { redirect_to storage_units_url, notice: 'Storage unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage_unit
      @storage_unit = StorageUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storage_unit_params
      params.require(:storage_unit).permit(:name, :description, :length, :width, :height, :renter_id, :annual_rate, :monthly_rate)
    end
end
