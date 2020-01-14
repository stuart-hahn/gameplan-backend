class Api::V1::FormationsController < ApplicationController
    def index
        formations = Formation.all
        render json: formations
    end
end
