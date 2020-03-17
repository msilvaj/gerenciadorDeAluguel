class RefeicoesController < ApplicationController
  before_action :set_refeicao, only: [:show, :edit, :update, :destroy]

  # GET /refeicoes
  # GET /refeicoes.json
  def index
    @refeicoes = Refeicao.all
  end

  # GET /refeicoes/1
  # GET /refeicoes/1.json
  def show
  end

  # GET /refeicoes/new
  def new
    @refeicao = Refeicao.new
  end

  # GET /refeicoes/1/edit
  def edit
  end

  # POST /refeicoes
  # POST /refeicoes.json
  def create
    @refeicao = Refeicao.new(refeicao_params)

    respond_to do |format|
      if @refeicao.save
        format.html { redirect_to @refeicao, notice: 'Refeicao was successfully created.' }
        format.json { render :show, status: :created, location: @refeicao }
      else
        format.html { render :new }
        format.json { render json: @refeicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refeicoes/1
  # PATCH/PUT /refeicoes/1.json
  def update
    respond_to do |format|
      if @refeicao.update(refeicao_params)
        format.html { redirect_to @refeicao, notice: 'Refeicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @refeicao }
      else
        format.html { render :edit }
        format.json { render json: @refeicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refeicoes/1
  # DELETE /refeicoes/1.json
  def destroy
    @refeicao.destroy
    respond_to do |format|
      format.html { redirect_to refeicoes_url, notice: 'Refeicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refeicao
      @refeicao = Refeicao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def refeicao_params
      params.require(:refeicao).permit(:horario, :descricao, :trefeicao_id, :dieta_id)
    end
end
