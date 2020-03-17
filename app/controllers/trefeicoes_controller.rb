class TrefeicoesController < ApplicationController
  before_action :set_trefeicao, only: [:show, :edit, :update, :destroy]

  # GET /trefeicoes
  # GET /trefeicoes.json
  def index
    @trefeicoes = Trefeicao.all
  end

  # GET /trefeicoes/1
  # GET /trefeicoes/1.json
  def show
  end

  # GET /trefeicoes/new
  def new
    @trefeicao = Trefeicao.new
  end

  # GET /trefeicoes/1/edit
  def edit
  end

  # POST /trefeicoes
  # POST /trefeicoes.json
  def create
    @trefeicao = Trefeicao.new(trefeicao_params)

    respond_to do |format|
      if @trefeicao.save
        format.html { redirect_to @trefeicao, notice: 'Trefeicao was successfully created.' }
        format.json { render :show, status: :created, location: @trefeicao }
      else
        format.html { render :new }
        format.json { render json: @trefeicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trefeicoes/1
  # PATCH/PUT /trefeicoes/1.json
  def update
    respond_to do |format|
      if @trefeicao.update(trefeicao_params)
        format.html { redirect_to @trefeicao, notice: 'Trefeicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @trefeicao }
      else
        format.html { render :edit }
        format.json { render json: @trefeicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trefeicoes/1
  # DELETE /trefeicoes/1.json
  def destroy
    @trefeicao.destroy
    respond_to do |format|
      format.html { redirect_to trefeicoes_url, notice: 'Trefeicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trefeicao
      @trefeicao = Trefeicao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trefeicao_params
      params.require(:trefeicao).permit(:nome)
    end
end
