module Api
  module V1
    class ListsController < ApplicationController
      before_action :set_list, only: [:update]
      before_action :set_board
      
      def index
				lists = @board.lists
				render json: lists,status: :ok
      end
      
      def update
        
        if @list.update(list_params)
          render json: @list, status: :success
        else
          render json: {error: 'Erro ao atualizar'}, status: :error
          end
      end

      private


      def list_params
        params.require(:list).permit(:id, :title, :creatable, :done, cards_attributes: [:id, :content, :labels, :position, :list_id])
      end
      def set_list
        @list = List.find params.require(:list_id)
      end
      def set_board
        @board = Board.find params.require(:board_id)
      end
    end
  end
end