class PosicionsController < ApplicationController
  before_action :set_posicion, only: %i[ show edit update destroy ]

  # GET /posicions or /posicions.json
  def index
    @posicions = Posicion.all
  end

  # GET /posicions/1 or /posicions/1.json
  def show
  end

  # GET /posicions/new
  def new
    @posicion = Posicion.new
  end

  # GET /posicions/1/edit
  def edit
  end

  # POST /posicions or /posicions.json
  def create
    @posicion = Posicion.new(posicion_params)

    respond_to do |format|
      if @posicion.save
        format.html { redirect_to posicion_url(@posicion), notice: "Posicion was successfully created." }
        format.json { render :show, status: :created, location: @posicion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @posicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posicions/1 or /posicions/1.json
  def update
    respond_to do |format|
      if @posicion.update(posicion_params)
        format.html { redirect_to posicion_url(@posicion), notice: "Posicion was successfully updated." }
        format.json { render :show, status: :ok, location: @posicion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @posicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posicions/1 or /posicions/1.json
  def destroy
    @posicion.destroy

    respond_to do |format|
      format.html { redirect_to posicions_url, notice: "Posicion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posicion
      @posicion = Posicion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def posicion_params
      params.require(:posicion).permit(:x, :y)
    end
end
