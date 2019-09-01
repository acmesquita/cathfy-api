module Api
    module V1
      class BoardsController < ApplicationController
        def index
					@boards = Board.order('created_at asc');
					render json: @boards,status: :ok
				end
			end
    end
  end