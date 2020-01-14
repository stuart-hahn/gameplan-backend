class Api::V1::FormationsController < ApplicationController
    before_action :set_formation, only: [:show, :update, :destroy]

    # GET /formations
    def index
      @formations = Formation.all
  
      render json: FormationSerializer.new(@formations)
    end
  
    # GET /formations/1
    def show
      render json: FormationSerializer.new(@formation)
    end
  
    # POST /formations
    def create
      @formation = Formation.new(formation_params)
  
      if @formation.save
        render json: FormationSerializer(@formation), status: :created, location: @formation
      else
        render json: @formation.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /formations/1
    def update
      if @formation.update(formation_params)
        render json: FormationSerializer.new(@formation)
      else
        render json: @formation.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /formations/1
    def destroy
      @formation.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_formation
        @formation = Formation.find_by(id: params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def formation_params
        params.require(:formation).permit(:name, :playbook)
      end
end
