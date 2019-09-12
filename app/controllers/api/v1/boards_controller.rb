class Api::V1::BoardsController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    @boards = current_user.boards
    render json: @boards, status: :ok
  end
  
  def create
    @board = Board.create(board_params.merge({user: current_user}))
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
