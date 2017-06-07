class AdquisicionesController < ApplicationController
  before_action :set_adquisicione, only: [:show, :edit, :update, :destroy]

  # GET /adquisiciones
  # GET /adquisiciones.json
  def index
    @adquisiciones = Adquisicione.all
  end

  # GET /adquisiciones/1
  # GET /adquisiciones/1.json
  def show
  end

  # GET /adquisiciones/new
  def new
    @adquisicione = Adquisicione.new
  end

  # GET /adquisiciones/1/edit
  def edit
  end

  # POST /adquisiciones
  # POST /adquisiciones.json
  def create
    @adquisicione = Adquisicione.new(adquisicione_params)

    respond_to do |format|
      if @adquisicione.save
        format.html { redirect_to @adquisicione, notice: 'Adquisicione was successfully created.' }
        format.json { render :show, status: :created, location: @adquisicione }
      else
        format.html { render :new }
        format.json { render json: @adquisicione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adquisiciones/1
  # PATCH/PUT /adquisiciones/1.json
  def update
    respond_to do |format|
      if @adquisicione.update(adquisicione_params)
        format.html { redirect_to @adquisicione, notice: 'Adquisicione was successfully updated.' }
        format.json { render :show, status: :ok, location: @adquisicione }
      else
        format.html { render :edit }
        format.json { render json: @adquisicione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adquisiciones/1
  # DELETE /adquisiciones/1.json
  def destroy
    @adquisicione.destroy
    respond_to do |format|
      format.html { redirect_to adquisiciones_url, notice: 'Adquisicione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adquisicione
      @adquisicione = Adquisicione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adquisicione_params
      params.require(:adquisicione).permit(:fecha_compra, :monto, :cliente)
    end
end
