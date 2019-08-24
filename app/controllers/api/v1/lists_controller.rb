module Api
  module V1
    class ListsController < ApplicationController
      def index
				lists = List.order('created_at');
				render json: lists,status: :ok
      end
      
      def def update
        @list = Object.find(params[:id])
          if @list.update_attributes(params[:list])
            render json: @list,status: :success
          else
            render json: {error: 'Erro ao atualizar'}, status: :error
          end
      end
      
    end
  end
end