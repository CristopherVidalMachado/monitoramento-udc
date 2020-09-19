class MonitoramentosController < ApplicationController
  before_action :set_monitoramento, only: [:show, :edit, :update, :destroy]

  # GET /monitoramentos
  # GET /monitoramentos.json
  def index
    @monitoramentos = Monitoramento.all
  end

  # GET /monitoramentos/1
  # GET /monitoramentos/1.json
  def show
  end

  # GET /monitoramentos/new
  def new
    @monitoramento = Monitoramento.new
  end

  # GET /monitoramentos/1/edit
  def edit
  end

  # POST /monitoramentos
  # POST /monitoramentos.json
  def create
    @monitoramento = Monitoramento.new(monitoramento_params)

    respond_to do |format|
      if @monitoramento.save
        format.html { redirect_to @monitoramento, notice: 'Monitoramento was successfully created.' }
        format.json { render :show, status: :created, location: @monitoramento }
      else
        format.html { render :new }
        format.json { render json: @monitoramento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoramentos/1
  # PATCH/PUT /monitoramentos/1.json
  def update
    respond_to do |format|
      if @monitoramento.update(monitoramento_params)
        format.html { redirect_to @monitoramento, notice: 'Monitoramento was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitoramento }
      else
        format.html { render :edit }
        format.json { render json: @monitoramento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoramentos/1
  # DELETE /monitoramentos/1.json
  def destroy
    @monitoramento.destroy
    respond_to do |format|
      format.html { redirect_to monitoramentos_url, notice: 'Monitoramento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoramento
      @monitoramento = Monitoramento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monitoramento_params
      params.require(:monitoramento).permit(:temperatura, :ph, :turbidez, :condutividade, :localidade_id)
    end
end
