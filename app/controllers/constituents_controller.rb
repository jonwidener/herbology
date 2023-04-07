class ConstituentsController < ApplicationController
  before_action :set_constituent, only: %i[ show edit update destroy ]

  # GET /constituents or /constituents.json
  def index
    @constituents = Constituent.all
  end

  # GET /constituents/1 or /constituents/1.json
  def show
  end

  # GET /constituents/new
  def new
    @constituent = Constituent.new
  end

  # GET /constituents/1/edit
  def edit
  end

  # POST /constituents or /constituents.json
  def create
    @constituent = Constituent.new(constituent_params)

    respond_to do |format|
      if @constituent.save
        format.html { redirect_to constituent_url(@constituent), notice: "Constituent was successfully created." }
        format.json { render :show, status: :created, location: @constituent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @constituent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constituents/1 or /constituents/1.json
  def update
    respond_to do |format|
      if @constituent.update(constituent_params)
        format.html { redirect_to constituent_url(@constituent), notice: "Constituent was successfully updated." }
        format.json { render :show, status: :ok, location: @constituent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @constituent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constituents/1 or /constituents/1.json
  def destroy
    @constituent.destroy

    respond_to do |format|
      format.html { redirect_to constituents_url, notice: "Constituent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constituent
      @constituent = Constituent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def constituent_params
      params.require(:constituent).permit(:name, :description)
    end
end
