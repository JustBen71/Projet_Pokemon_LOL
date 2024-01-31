class ChampionsController < ApplicationController
  before_action :set_champion, only: %i[ show update destroy ]

  # GET /champions
  def index
    @champions = Champion.all

    render xml: @champions.as_json
  end

  # GET /champions/1
  def show
    render xml: @champion.as_json
  end

  # POST /champions
  def create
    @champion = Champion.new(champion_params)

    if @champion.save
      render xml: @champion.as_json, status: :created, location: @champion.as_json
    else
      render xml: @champion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /champions/1
  def update
    if @champion.update(champion_params)
      render xml: @champion.as_json
    else
      render xml: @champion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /champions/1
  def destroy
    @champion.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion
      @champion = Champion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def champion_params
      params.require(:champion).permit(:name, :difficulte, :toxicite, :niveau, :attaquephysique, :attaquemagique, :armurephysique, :armuremagique, :critique, :main)
    end
end
