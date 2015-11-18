class ProvPintsController < ApplicationController
  before_action :set_prov_pint, only: [:show, :edit, :update, :destroy]

  # GET /prov_pints
  # GET /prov_pints.json
  def index
    @prov_pints = ProvPint.all
  end

  # GET /prov_pints/1
  # GET /prov_pints/1.json
  def show
  end

  # GET /prov_pints/new
  def new
    @prov_pint = ProvPint.new
  end

  # GET /prov_pints/1/edit
  def edit
  end

  # POST /prov_pints
  # POST /prov_pints.json
  def create
    @prov_pint = ProvPint.new(prov_pint_params)

    respond_to do |format|
      if @prov_pint.save
        format.html { redirect_to @prov_pint, notice: 'Proveedor pintura agregada correctamente.' }
        format.json { render :show, status: :created, location: @prov_pint }
      else
        format.html { render :new }
        format.json { render json: @prov_pint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prov_pints/1
  # PATCH/PUT /prov_pints/1.json
  def update
    respond_to do |format|
      if @prov_pint.update(prov_pint_params)
        format.html { redirect_to @prov_pint, notice: 'Proveedor pintura actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @prov_pint }
      else
        format.html { render :edit }
        format.json { render json: @prov_pint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prov_pints/1
  # DELETE /prov_pints/1.json
  def destroy
    @prov_pint.destroy
    respond_to do |format|
      format.html { redirect_to prov_pints_url, notice: 'Proveedor pintura eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prov_pint
      @prov_pint = ProvPint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prov_pint_params
      params.require(:prov_pint).permit(:proveedor_id, :pintura_id)
    end
end
