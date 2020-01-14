class Api::V1::FormationsController < ApplicationController
    def index
        formations = Formation.all
        render json: formations
    end

    def create
        formation = Formation.create(formation_params)
    end

    private

    def formation_params
        params.require(:formation).permit(:name, :playbook)
    end
end
