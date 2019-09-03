module Api
    module V1
      class BoardsController < ApplicationController
        def index
					@boards = Board.order('created_at asc');
					render json: @boards,status: :ok
        end
        
        def create
          @board = Board.create(board_params)
          @board.color = Faker::Color.hex_color.to_s
          if @board.save
            @board.start_lists
            render json: @board, status: :created
          end
        end

        private

        def board_params
          params.require(:board).permit!()
        end
			end
    end
  end